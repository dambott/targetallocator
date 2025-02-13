### Target Allocator workshop

1. Set CORALOGIX_API_KEY environment variable for your CX team
2. Edit `2-deploy-otel-collector.sh` to set your CX domain (e.g. 'cx498.coralogix.com') and k8s cluster name
3. Deploy the servicemonitor and podmonitor CRDs and the example servicemonitor and podmonitor: `source 1-deploy-monitors.sh`
4. Deploy the otel collector, including the target allocator: `source 2-deploy-otel-collector.sh` 
5. Deploy the 2 applications that each emit a metric: `source 3-deploy-prom-app.sh`
6. Two metrics will be visible generating random values from 0-100: `prom1` and `prom2`   
7. Install the provided dashboard: `targetallocator_workshop.json` in your team and observe the metrics that are being ingested
8. Examine the yaml files and understand how the service and pod monitors discover the applications to get their metrics
9. Clean up apps: `source 4-delete-prom-app.sh`
10. Clean up collector and monitors: `source 5-delete-infra.sh`