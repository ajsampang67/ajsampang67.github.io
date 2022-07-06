# Install Bitnami charts
helm repo add bitnami https://charts.bitnami.com/bitnami

# Cert manager
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.8.0/cert-manager.yaml

# Secrets
- Create file `blog/.env.db.credentials`
-- Necessary keys: `username`, `mariadb-root-password`, `mariadb-replication-password` and `mariadb-password`
- Run `kubectl apply -k blog/`