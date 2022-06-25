#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Usage: ./start-cluster {ENV}"
	exit 1
fi

helm upgrade --install longhorn longhorn/longhorn --namespace longhorn-system --create-namespace
helm upgrade --install database database/ database/values-$1.yaml
helm upgrade --install ajtheamazing dxp/ -f ajtheamazing/values-$1.yaml
helm upgrade --install blog dxp/ -f blog/values-$1.yaml
