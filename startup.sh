#!/bin/bash
#
# Minimal startup script for EMQ X Broker
#

minikube start

helm repo add emqx https://repos.emqx.io/charts
helm repo add jetstack https://charts.jetstack.io
helm repo update

# Install Cert-Manager
helm upgrade --install cert-manager jetstack/cert-manager \
    --namespace cert-manager \
    --create-namespace \
    --set installCRDs=true

# Install EMQ X Operator
helm upgrade --install emqx-operator emqx/emqx-operator \
    --namespace emqx-operator-system \
    --create-namespace

kubectl apply -k manifests/
# Apply twice because we need CRDs lol... Dont care enough to fix it
sleep 2
kubectl apply -k manifests/


kubectl port-forward -n emqx svc/emqx-listeners 1883:1883