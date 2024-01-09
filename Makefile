#setup make commands
help:
	@echo "Makefile supported commands:"
	@echo "1. build-mar: download and build mar file for sdxl model"
	@echo "2. create-cluster: Create EKS cluster in AWS based on given manifest"
	@echo "3. setup-serviceaccount: Setup Service account to handle IAM policy creation"
	@echo "4. install-istio: Install and setup Istio"
	@echo "5. install-addons: Install addons like Grafana, etc."
	@echo "6. install-kserve: To install Kserving on created EKS cluster"

build-mar:
	@echo downloading SDXL model....
	cd torchserver_marfile/
	python download_sdxl.py

	@echo zipping model in zip....
	sh model_zip.sh
	
	@echo pulling docker image...
	docker pull pytorch/torchserve:0.8.1-gpu

	@echo model-archiver command inside docker...
	@echo building mar file...
	docker run --rm --shm-size=1g --ulimit memlock=-1 \
	--ulimit stack=67108864 --gpus all -v $PWD:/src \
	pytorch/torchserve:0.8.1-gpu \
	torch-model-archiver --model-name sdxl --version 1.0 --handler /src/sdxl_handler.py \
	--extra-files /src/sdxl-1.0-model.zip -r /src/requirements.txt
	cd ..

create-cluster:
	@echo creating custom IAM policy for S3....
	aws iam create-policy --policy-name S3ListTest --policy-document file://manifest_yaml/iam-s3-test-policy.json
	aws iam get-policy-version --policy-arn arn:aws:iam::${ACCOUNT_ID}:policy/S3ListTest --version-id v1

	@echo creating EKS cluster....
	eksctl create cluster -f manifest_yaml/eks-cluster.manifest_yaml

	@echo cluster is created!

setup-serviceaccount:
	@echo enabling OIDC Provider....
	eksctl utils associate-iam-oidc-provider --region ${REGION} --cluster ${CLUSTER_NAME} --approve

	@echo creating IAM role for Service Account....
	eksctl create iamserviceaccount \
  	--name s3-list-sa \
  	--cluster ${CLUSTER_NAME} \
  	--attach-policy-arn arn:aws:iam::${ACCOUNT_ID}:policy/S3ListTest \
  	--approve \
	--region ${REGION}

install-istio:
	@echo running shell script to install Istio....
	cp scripts/istio_setup.sh .
	sh istio_setup.sh
	rm istio_setup.sh

install-addons:
	@echo running shell script to install addions....
	cp scripts/install_addons.sh .
	sh install_addons.sh
	rm install_addons.sh

install-kserve:
	@echo installing kserve
	kubectl apply -f manifest_yaml/istio-kserve-ingress.yaml   

	@echo installing cert manager
	kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.13.1/cert-manager.yaml

	@echo installing Kserve manifest
	kubectl apply -f https://github.com/kserve/kserve/releases/download/v0.11.1/kserve.yaml

	@echo installing Kserve runtime
	kubectl apply -f https://github.com/kserve/kserve/releases/download/v0.11.1/kserve-runtimes.yaml
	kubectl patch configmap/inferenceservice-config -n kserve --type=strategic -p '{"data": {"deploy": "{\"defaultDeploymentMode\": \"RawDeployment\"}"}}'

	@echo Creating secret for S3 Access
	eksctl create iamserviceaccount \
	--cluster=${CLUSTER_NAME} \
	--name=s3-read-only \
	--attach-policy-arn=arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess \
	--override-existing-serviceaccounts \
	--region ${REGION} \
	--approve
	kubectl apply -f manifest_yaml/kserve-s3-secret.yaml
	kubectl patch serviceaccount s3-read-only -p '{"secrets": [{"name": "s3-secret"}]}'
