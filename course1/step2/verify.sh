#!/bin/bash

# Define the path to the K3s kubectl
KUBECTL=/usr/local/bin/k3s kubectl

# Retrieve the node information
NODES=$($KUBECTL get nodes -o jsonpath='{range .items[*]}{.metadata.name} {.status.conditions[?(@.type=="Ready")].status}{"\n"}{end}')

# Split the node information into an array
NODES=($NODES)

# Check if the node status is "True"
if [[ ${NODES[1]} == "True" ]]; then
    echo "Kubernetes has been successfully created using K3s. Node ${NODES[0]} is ready."
else
    echo "Kubernetes creation unsuccessful or Node ${NODES[0]} is not ready."
    exit 1
fi
