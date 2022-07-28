# Kubernetes
 
* **컨테이너화**된 애플리케이션을 자동으로 배포, 스케일링 및 관리해주는 오픈소스 시스템

<br>

`kubeadm`: 클러스터를 부트스트랩하는 명령

`kubelet`: 클러스터의 모든 머신에서 실행되는 파드와 컨테이너 시작과 같은 작업을 수행하는 컴포넌트

`kubectl`: 클러스터와 통신하기 위한 커맨드 라인 유틸리티

## Run

---
### install kubectl

* mac m1
```shell
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl"
```

* mac intel
```shell
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/amd64/kubectl"
```

* brew
```shell
brew install kubectl
```

* EKS

EKS 클러스터 구성시 필수 배포 서비스

1. cluster-autoscaler
2. aws-node-termination-handler
3. metrics-server
4. nginx-ingress-admin
5. monitoring
   1. loki
   2. grafana
6. agrocd

