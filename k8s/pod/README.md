# Pod

* `Pod` 는 `kubernetes`에서 관리하는 가장 작은 배포 단위 (object)

<br>

`kubernetes` 와 `docker`의 차이라면 쿠버네티스는 `Pod` 를 생성하고 도커는 container 를 생성

하나의 `Pod`는 하나, 또는 여러개의 컨테이너로 구성 가능

쿠버네티스 노드에 존재하는 `kubelet`이 `CRI(ContainerRuntimeInterface)` 의 구성대로 `Pod` 내부에 컨테이너를 생성한다. (사실상 컨테이너 기술의 표준이 도커라서 도커 컨테이너로 이해하면됨.)

