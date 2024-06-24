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
