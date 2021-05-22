# Prometheus
kubectl delete -k ./prometheus -n monitoring

# Node exporter
kubectl delete -k ./node_exporter -n monitoring

# Alert manager

# Grafana
kubectl delete -k ./grafana -n monitoring

# Namespace
kubectl delete namespace monitoring
