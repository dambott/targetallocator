# delete the applications
kubectl delete deployment prometheus-client1 --ignore-not-found=true 
kubectl delete deployment prometheus-client2 --ignore-not-found=true
 
# delete the prometheus-client1 service
kubectl delete service prometheus-client1 --ignore-not-found=true