#!/bin/bash


mkdir -p /etc/rancher/k3s

cat << EOF > /etc/rancher/k3s/config.yaml
node-name: codekilla-k3s
EOF

curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION="v1.27.3+k3s1" INSTALL_K3S_EXEC="server" sh -s - -c /etc/rancher/k3s/config.yaml --docker

# wait fo k8s ready
while ! kubectl get nodes | grep -w "Ready"; do
  echo "WAIT FOR NODES READY"
  sleep 1
done
touch /ks/.k8sfinished