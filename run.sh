set -a
source .env

# Create namespace
envsubst < namespace.yaml | kubectl create -f -
# kubectl create -f namespace.yaml

# Prometheus
envsubst < ./prometheus/alert-rules-configmap.yaml | kubectl create -f -
envsubst < ./prometheus/cluster-role.yaml | kubectl create -f -
envsubst < ./prometheus/configmap.yaml | kubectl create -f -
envsubst < ./prometheus/deployment.yaml | kubectl create -f -
envsubst < ./prometheus/service.yaml | kubectl create -f -
# kubectl create -k ./prometheus -n monitoring

# Node exporter
envsubst < ./node_exporter/daemonset.yaml | kubectl create -f -
envsubst < ./node_exporter/service.yaml | kubectl create -f -
# kubectl create -k ./node_exporter -n monitoring

# Alert manager

# Grafana
envsubst < ./grafana/configmap.yaml | kubectl create -f -
envsubst < ./grafana/deployment.yaml | kubectl create -f -
envsubst < ./grafana/service.yaml| kubectl create -f -
# kubectl create -k ./grafana -n monitoring
