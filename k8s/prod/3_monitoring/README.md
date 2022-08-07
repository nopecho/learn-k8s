## monitoring

**쿠버네티스 클러스터 monitoring**

* prometheus : server metrics 수집
* loki : pod log 수집 (사이트카 패턴)
* grafana : dashboard


```shell
kubectl create namespace monitoring
```
---

## prometheus  

### add repo

```shell
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
```

### install

```shell
helm upgrade \
--install prometheus prometheus-community/prometheus \
-f values.yaml \
-n monitoring
```

---

## loki

### add repo

```shell
helm repo add loki https://grafana.github.io/loki/charts
```

### install

```shell
helm upgrade \
--install loki loki/loki-stack \
-f values.yaml \
-n monitoring
```


---

## grafana

### add repo

```shell
helm repo add grafana https://grafana.github.io/helm-charts
```

### install

```shell
helm upgrade \
--install grafana grafana/grafana \
-f values.yaml \
-n monitoring
```

* Dashboard
```shell
https://grafana.com/grafana/dashboards/
```
