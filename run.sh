# Create namespace
kubectl create -f namespace.yaml

# Prometheus
kubectl create -k ./prometheus -n monitoring

# Node exporter

# Alert manager

# Grafana

