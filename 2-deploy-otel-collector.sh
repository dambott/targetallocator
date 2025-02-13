 # use the CX key to create a secret for the collector to use
 # Set the domain and cluster name below
kubectl create secret generic coralogix-keys --from-literal=PRIVATE_KEY=${CORALOGIX_API_KEY}

# install default Coralogix collector and start targetAllocator
helm repo add coralogix https://cgx.jfrog.io/artifactory/coralogix-charts-virtual
helm repo update

helm install otel-coralogix-integration coralogix/otel-integration	\
    --set global.domain="<Your CX Region>"				            \
    --set global.clusterName="<Your Cluster Name>"				    \
    --set opentelemetry-agent.targetAllocator.enabled=true
