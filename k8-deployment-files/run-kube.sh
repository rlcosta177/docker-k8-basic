#!/bin/bash

sleep 2
kubectl apply -f stor-class.yaml

sleep 2
kubectl apply -f per-vol-claim.yaml

sleep 2
kubectl apply -f postgres-confserv.yaml

sleep 2
kubectl apply -f postgres-deployment.yaml

sleep 2
kubectl apply -f plik-deployment.yaml

sleep 2
kubectl apply -f wiki-deployment.yaml

sleep 2
kubectl apply -f secret-deployment.yaml

sleep 2
kubectl apply -f ejbca-deployment.yaml

sleep 2
kubectl apply -f nginx-configmap.yaml

sleep 2
kubectl apply -f nginx-deployment.yaml


# Example of container start with rollout

# Apply the One-time Secret deployment YAML
#kubectl apply -f secret-deployment.yaml

# Wait for the One-time Secret deployment to be ready
#kubectl rollout status deployment/secret-service

# Can be done with any deployment ofc
