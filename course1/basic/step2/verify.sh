#!/bin/bash

# Define the path to the kubectl
KUBECTL='/usr/local/bin/k3s kubectl'

# Retrieve the node information
NODES=$($KUBECTL get nodes -o jsonpath='{range .items[*]}{.metadata.name} {.status.conditions[?(@.type=="Ready")].status}{"\n"}{end}')

# Check if the node status is "True"
if [[ ${NODES[*]} == *"True"* ]]; then
    echo "Kubernetes has been successfully created using K3s. Nodes are ready."
else
    echo "Kubernetes creation unsuccessful or Nodes are not ready."
    exit 1
fi
