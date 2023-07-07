#!/bin/bash

FILE=/etc/rancher/k3s/config.yaml
EXPECTED=("node-name: \"k3s-killercoda\"")

for i in "${EXPECTED[@]}"
do
  if grep -qF "$i" $FILE; then
    echo "Found: $i"
  else
    echo "Not Found: $i"
    exit 1
  fi
done
