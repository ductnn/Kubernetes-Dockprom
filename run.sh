set -a
source .env

# Create namespace
envsubst < ./common/namespace.yaml | kubectl create -f -
# kubectl create -f namespace.yaml

# Prometheus
envsubst < <(kubectl kustomize ./prometheus -n monitoring) | kubectl create -f -

# Node exporter
envsubst < <(kubectl kustomize ./node_exporter -n monitoring) | kubectl create -f -

# Alert manager

# Grafana
envsubst < <(kubectl kustomize ./grafana -n monitoring) | kubectl create -f -
