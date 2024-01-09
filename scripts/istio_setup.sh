echo "Installing Metrics API"
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml

#scripts and command to install ISTIO
echo "installing ISTIO"
helm repo add istio https://istio-release.storage.googleapis.com/charts

helm repo update
kubectl create namespace istio-system
helm install istio-base istio/base -n istio-system --set defaultRevision=default --wait
helm install istiod istio/istiod -n istio-system --wait
kubectl create namespace istio-ingress

helm install istio-ingress istio/gateway -n istio-ingress \
  --set "labels.istio=ingressgateway" \
  --set service.annotations."service\beta\.kubernetes\.io/aws-load-balancer-type"="nlb" \
  --set service.annotations."service\.beta\.kubernetes\.io/aws-load-balancer-scheme"="internet-facing" \
  --set service.annotations."service\.beta\.kubernetes\.io/aws-load-balancer-attributes"="load_balancing.cross_zone.enabled=true" \
  --wait

kubectl rollout restart deployment istio-ingress -n istio-ingress

#enable istio side car injection
kubectl label namespace default istio-injection=enabled

echo "Istio installation and setup is completed!"
