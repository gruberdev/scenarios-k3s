#!/bin/bash

# Define the path to the kubectl
KUBECTL='/usr/local/bin/k3s kubectl'

# Retrieve the node information
NODES=$($KUBECTL get nodes -o jsonpath='{range .items[*]}{.metadata.name} {.status.conditions[?(@.type=="Ready")].status} {.status.nodeInfo.kubeletVersion} {.metadata.labels}{"\n"}{end}')

# Check if the node status is "True", version is "v1.27.3", and node is control-plane
if [[ ${NODES[*]} == *"True"* && ${NODES[*]} == *"v1.27.3"* && ${NODES[*]} == *"node-role.kubernetes.io/control-plane"* ]]; then
    echo "Kubernetes has been successfully created using K3s. Nodes are ready, running version v1.27.3 and are control-plane nodes."
else
    echo "Kubernetes creation unsuccessful or Nodes are not ready, not running version v1.27.3, or are not control-plane nodes."
    exit 1
fi
