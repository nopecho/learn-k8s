## metrics server

**쿠버네티스 클러스터 Ingress Controller**

`helm`을 이용해서 클러스터에 배포

#### minikube
* setup
```shell
minikube addons enable ingress
```
* ip check
```shell
minikube service ingress-nginx-controller -n ingress-nginx --url
```

---

## nginx

### add repo

```shell
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
```

### install

```shell
helm upgrade \
--install nginx-ingress-controller ingress-nginx/ingress-nginx  \
--version 4.2.0 \
-f values.yaml \
-n ingress-controller
```

### check

```shell
kubectl get all -n ingress-controller
```

---

## aws-ingress-controller

### add repo

```shell
helm repo add eks https://aws.github.io/eks-charts
```

### install

```shell
helm upgrade \
-i aws-load-balancer-controller eks/aws-load-balancer-controller \
--set clusterName={your-cluster-name} \
--set serviceAccount.create={false} \
--set serviceAccount.name={aws-load-balancer-controller} \
 -n kube-system
```

### check

```shell
kubectl get all -n kube-system
```
