#!/bin/bash

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
