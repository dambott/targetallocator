# delete secret
kubectl delete secret coralogix-keys --ignore-not-found=true 

# delete the collector
helm delete  otel-coralogix-integration --ignore-not-found=true 

# delete the prometheus-client1 service
kubectl delete service prometheus-client1 --ignore-not-found=true 

# delete CRDs - removes the service and pod monitors as it does so
kubectl delete crd podmonitors.monitoring.coreos.com --ignore-not-found=true 
kubectl delete crd servicemonitors.monitoring.coreos.com --ignore-not-found=true 