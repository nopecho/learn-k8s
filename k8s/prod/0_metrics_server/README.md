## metrics server

**쿠버네티스 클러스터 내 리소스 사용량 집계**

`helm`을 이용해서 클러스터에 배포

---

### add repo
```shell
helm repo add metrics-server https://kubernetes-sigs.github.io/metrics-server/
```

### install
```shell
helm upgrade \
--install metrics-server metrics-server/metrics-server \
--version 3.8.2 \
-f values.yaml \
-n kube-system
```

### check
```shell
kubectl top node
```