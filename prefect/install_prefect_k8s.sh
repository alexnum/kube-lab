!#/bin/sh
helm repo add prefect https://prefecthq.github.io/prefect-helm
# Update Helm repositories
helm repo update
helm install prefect-server prefect/prefect-server --version 3.0.2
