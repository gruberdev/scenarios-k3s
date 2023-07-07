#!/bin/bash

FILE=/etc/rancher/k3s/config.yaml
EXPECTED="node-name: \S+"

if grep -Pq "$EXPECTED" $FILE; then
  echo "Found key: node-name with a non-empty value."
else
  exit 1
fi
