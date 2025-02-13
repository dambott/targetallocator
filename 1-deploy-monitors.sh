# install servicemonitor and podmonitor CRDs
kubectl apply -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/main/example/prometheus-operator-crd/monitoring.coreos.com_podmonitors.yaml
kubectl apply -f https://raw.githubusercontent.com/prometheus-operator/prometheus-operator/main/example/prometheus-operator-crd/monitoring.coreos.com_servicemonitors.yaml

# install servicemonitor and podmonitor
kubectl apply -f servicemonitor.yaml
kubectl apply -f podmonitor.yaml
