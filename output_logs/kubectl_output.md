```bash
NAMESPACE       NAME                                                                  READY   STATUS      RESTARTS      AGE
cert-manager    pod/cert-manager-6856c9896b-zbwtf                                     1/1     Running     0             63m
cert-manager    pod/cert-manager-cainjector-fc54fdc88-8dqqd                           1/1     Running     0             63m
cert-manager    pod/cert-manager-webhook-68496779c4-tq46b                             1/1     Running     0             63m
default         pod/torchserve-predictor-556dc4dd84-8bhnq                             2/2     Running     0             46m
gpu-operator    pod/gpu-feature-discovery-b7qmq                                       1/1     Running     0             54m
gpu-operator    pod/gpu-operator-1699730725-node-feature-discovery-gc-86b7799frpwdq   1/1     Running     0             55m
gpu-operator    pod/gpu-operator-1699730725-node-feature-discovery-master-5c5558gdb   1/1     Running     0             55m
gpu-operator    pod/gpu-operator-1699730725-node-feature-discovery-worker-2spqm       1/1     Running     0             55m
gpu-operator    pod/gpu-operator-1699730725-node-feature-discovery-worker-6m2q8       1/1     Running     0             55m
gpu-operator    pod/gpu-operator-1699730725-node-feature-discovery-worker-8qzln       1/1     Running     0             55m
gpu-operator    pod/gpu-operator-1699730725-node-feature-discovery-worker-bnqj7       1/1     Running     0             55m
gpu-operator    pod/gpu-operator-1699730725-node-feature-discovery-worker-rqblp       1/1     Running     0             55m
gpu-operator    pod/gpu-operator-1699730725-node-feature-discovery-worker-s5f5c       1/1     Running     0             55m
gpu-operator    pod/gpu-operator-1699730725-node-feature-discovery-worker-w6fxm       1/1     Running     0             55m
gpu-operator    pod/gpu-operator-674d59656d-dqvc8                                     1/1     Running     0             55m
gpu-operator    pod/nvidia-cuda-validator-jv7cv                                       0/1     Completed   0             54m
gpu-operator    pod/nvidia-dcgm-exporter-p6fjp                                        1/1     Running     0             54m
gpu-operator    pod/nvidia-device-plugin-daemonset-jzcqn                              1/1     Running     0             54m
gpu-operator    pod/nvidia-operator-validator-69c8s                                   1/1     Running     0             54m
istio-ingress   pod/istio-ingress-59766c47cd-rmq59                                    1/1     Running     0             73m
istio-system    pod/grafana-5f98b97b64-ptg95                                          1/1     Running     0             72m
istio-system    pod/istiod-8947ff6d8-bcb48                                            1/1     Running     0             74m
istio-system    pod/jaeger-76cd7c7566-gjlhs                                           1/1     Running     0             72m
istio-system    pod/kiali-7799445c94-ctjgn                                            1/1     Running     0             72m
istio-system    pod/prometheus-67599c8d5c-mhsc9                                       2/2     Running     0             72m
kserve          pod/kserve-controller-manager-75d6bbf55d-vx8rl                        2/2     Running     1 (59m ago)   62m
kube-system     pod/aws-node-8v9nf                                                    1/1     Running     0             86m
kube-system     pod/aws-node-ckjtk                                                    1/1     Running     0             86m
kube-system     pod/aws-node-ghx59                                                    1/1     Running     0             86m
kube-system     pod/aws-node-lzhrx                                                    1/1     Running     0             86m
kube-system     pod/aws-node-pclsl                                                    1/1     Running     0             86m
kube-system     pod/aws-node-vh95c                                                    1/1     Running     0             86m
kube-system     pod/aws-node-w97cq                                                    1/1     Running     0             86m
kube-system     pod/coredns-6db85c8f99-4tj7d                                          1/1     Running     0             93m
kube-system     pod/coredns-6db85c8f99-l7p82                                          1/1     Running     0             93m
kube-system     pod/kube-proxy-56psr                                                  1/1     Running     0             86m
kube-system     pod/kube-proxy-hnn4n                                                  1/1     Running     0             86m
kube-system     pod/kube-proxy-l2rjp                                                  1/1     Running     0             86m
kube-system     pod/kube-proxy-lpgc2                                                  1/1     Running     0             86m
kube-system     pod/kube-proxy-nzxqn                                                  1/1     Running     0             86m
kube-system     pod/kube-proxy-sg8pt                                                  1/1     Running     0             86m
kube-system     pod/kube-proxy-vtj7k                                                  1/1     Running     0             86m
kube-system     pod/metrics-server-5b4fc487-7vnj8                                     1/1     Running     0             77m

NAMESPACE       NAME                                                            TYPE           CLUSTER-IP       EXTERNAL-IP                                                                PORT(S)                                      AGE
cert-manager    service/cert-manager                                            ClusterIP      10.100.35.36     <none>                                                                     9402/TCP                                     63m
cert-manager    service/cert-manager-webhook                                    ClusterIP      10.100.58.146    <none>                                                                     443/TCP                                      63m
default         service/kubernetes                                              ClusterIP      10.100.0.1       <none>                                                                     443/TCP                                      93m
default         service/torchserve-predictor                                    ClusterIP      10.100.164.70    <none>                                                                     80/TCP                                       46m
gpu-operator    service/gpu-operator                                            ClusterIP      10.100.189.33    <none>                                                                     8080/TCP                                     54m
gpu-operator    service/gpu-operator-1699730725-node-feature-discovery-master   ClusterIP      10.100.21.19     <none>                                                                     8080/TCP                                     55m
gpu-operator    service/nvidia-dcgm-exporter                                    ClusterIP      10.100.14.240    <none>                                                                     9400/TCP                                     54m
istio-ingress   service/istio-ingress                                           LoadBalancer   10.100.157.227   abf6e684ded674c19ab5852952e40062-1259296872.ap-south-1.elb.amazonaws.com   15021:30296/TCP,80:32339/TCP,443:31632/TCP   74m
istio-system    service/grafana                                                 ClusterIP      10.100.219.33    <none>                                                                     3000/TCP                                     72m
istio-system    service/istiod                                                  ClusterIP      10.100.227.0     <none>                                                                     15010/TCP,15012/TCP,443/TCP,15014/TCP        74m
istio-system    service/jaeger-collector                                        ClusterIP      10.100.182.151   <none>                                                                     14268/TCP,14250/TCP,9411/TCP                 72m
istio-system    service/kiali                                                   ClusterIP      10.100.37.99     <none>                                                                     20001/TCP,9090/TCP                           72m
istio-system    service/prometheus                                              ClusterIP      10.100.217.232   <none>                                                                     9090/TCP                                     72m
istio-system    service/tracing                                                 ClusterIP      10.100.48.62     <none>                                                                     80/TCP,16685/TCP                             72m
istio-system    service/zipkin                                                  ClusterIP      10.100.242.220   <none>                                                                     9411/TCP                                     72m
kserve          service/kserve-controller-manager-metrics-service               ClusterIP      10.100.200.140   <none>                                                                     8443/TCP                                     62m
kserve          service/kserve-controller-manager-service                       ClusterIP      10.100.98.48     <none>                                                                     8443/TCP                                     62m
kserve          service/kserve-webhook-server-service                           ClusterIP      10.100.232.173   <none>                                                                     443/TCP                                      62m
kube-system     service/kube-dns                                                ClusterIP      10.100.0.10      <none>                                                                     53/UDP,53/TCP                                93m
kube-system     service/metrics-server                                          ClusterIP      10.100.153.49    <none>                                                                     443/TCP                                      77m

NAMESPACE      NAME                                                                   DESIRED   CURRENT   READY   UP-TO-DATE   AVAILABLE   NODE SELECTOR                                      AGE
gpu-operator   daemonset.apps/gpu-feature-discovery                                   1         1         1       1            1           nvidia.com/gpu.deploy.gpu-feature-discovery=true   54m
gpu-operator   daemonset.apps/gpu-operator-1699730725-node-feature-discovery-worker   7         7         7       7            7           <none>                                             55m
gpu-operator   daemonset.apps/nvidia-dcgm-exporter                                    1         1         1       1            1           nvidia.com/gpu.deploy.dcgm-exporter=true           54m
gpu-operator   daemonset.apps/nvidia-device-plugin-daemonset                          1         1         1       1            1           nvidia.com/gpu.deploy.device-plugin=true           54m
gpu-operator   daemonset.apps/nvidia-driver-daemonset                                 0         0         0       0            0           nvidia.com/gpu.deploy.driver=true                  54m
gpu-operator   daemonset.apps/nvidia-mig-manager                                      0         0         0       0            0           nvidia.com/gpu.deploy.mig-manager=true             54m
gpu-operator   daemonset.apps/nvidia-operator-validator                               1         1         1       1            1           nvidia.com/gpu.deploy.operator-validator=true      54m
kube-system    daemonset.apps/aws-node                                                7         7         7       7            7           <none>                                             93m
kube-system    daemonset.apps/kube-proxy                                              7         7         7       7            7           <none>                                             93m

NAMESPACE       NAME                                                                    READY   UP-TO-DATE   AVAILABLE   AGE
cert-manager    deployment.apps/cert-manager                                            1/1     1            1           63m
cert-manager    deployment.apps/cert-manager-cainjector                                 1/1     1            1           63m
cert-manager    deployment.apps/cert-manager-webhook                                    1/1     1            1           63m
default         deployment.apps/torchserve-predictor                                    1/1     1            1           46m
gpu-operator    deployment.apps/gpu-operator                                            1/1     1            1           55m
gpu-operator    deployment.apps/gpu-operator-1699730725-node-feature-discovery-gc       1/1     1            1           55m
gpu-operator    deployment.apps/gpu-operator-1699730725-node-feature-discovery-master   1/1     1            1           55m
istio-ingress   deployment.apps/istio-ingress                                           1/1     1            1           74m
istio-system    deployment.apps/grafana                                                 1/1     1            1           72m
istio-system    deployment.apps/istiod                                                  1/1     1            1           74m
istio-system    deployment.apps/jaeger                                                  1/1     1            1           72m
istio-system    deployment.apps/kiali                                                   1/1     1            1           72m
istio-system    deployment.apps/prometheus                                              1/1     1            1           72m
kserve          deployment.apps/kserve-controller-manager                               1/1     1            1           62m
kube-system     deployment.apps/coredns                                                 2/2     2            2           93m
kube-system     deployment.apps/metrics-server                                          1/1     1            1           77m

NAMESPACE       NAME                                                                               DESIRED   CURRENT   READY   AGE
cert-manager    replicaset.apps/cert-manager-6856c9896b                                            1         1         1       63m
cert-manager    replicaset.apps/cert-manager-cainjector-fc54fdc88                                  1         1         1       63m
cert-manager    replicaset.apps/cert-manager-webhook-68496779c4                                    1         1         1       63m
default         replicaset.apps/torchserve-predictor-556dc4dd84                                    1         1         1       46m
gpu-operator    replicaset.apps/gpu-operator-1699730725-node-feature-discovery-gc-86b7799f6b       1         1         1       55m
gpu-operator    replicaset.apps/gpu-operator-1699730725-node-feature-discovery-master-5c555c8fff   1         1         1       55m
gpu-operator    replicaset.apps/gpu-operator-674d59656d                                            1         1         1       55m
istio-ingress   replicaset.apps/istio-ingress-59766c47cd                                           1         1         1       73m
istio-ingress   replicaset.apps/istio-ingress-858849b544                                           0         0         0       74m
istio-system    replicaset.apps/grafana-5f98b97b64                                                 1         1         1       72m
istio-system    replicaset.apps/istiod-8947ff6d8                                                   1         1         1       74m
istio-system    replicaset.apps/jaeger-76cd7c7566                                                  1         1         1       72m
istio-system    replicaset.apps/kiali-7799445c94                                                   1         1         1       72m
istio-system    replicaset.apps/prometheus-67599c8d5c                                              1         1         1       72m
kserve          replicaset.apps/kserve-controller-manager-75d6bbf55d                               1         1         1       62m
kube-system     replicaset.apps/coredns-6db85c8f99                                                 2         2         2       93m
kube-system     replicaset.apps/metrics-server-5b4fc487                                            1         1         1       77m

NAMESPACE       NAME                                                       REFERENCE                         TARGETS   MINPODS   MAXPODS   REPLICAS   AGE
default         horizontalpodautoscaler.autoscaling/torchserve-predictor   Deployment/torchserve-predictor   0%/80%    1         1         1          46m
istio-ingress   horizontalpodautoscaler.autoscaling/istio-ingress          Deployment/istio-ingress          4%/80%    1         5         1          74m
istio-system    horizontalpodautoscaler.autoscaling/istiod                 Deployment/istiod                 0%/80%    1         5         1          74m
```