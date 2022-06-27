# Install Bitnami charts
helm repo add bitnami https://charts.bitnami.com/bitnami

# Cert manager
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.8.0/cert-manager.yaml
