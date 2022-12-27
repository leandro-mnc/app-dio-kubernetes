#!/bin/bash

APP_VERSION=$1

DB_VERSION=$2

SSH_KEY=$3

SSH_IP=$4

# É necessário ter uma máquina (VM), com kubectl instalado e conectado ao cluster para subir a aplicação
ssh -o StrictHostKeyChecking=no -i $SSH_KEY gcp@$SSH_IP \
"git clone https://gitlab.com/leandro-mnc/app-dio-kubernetes.git &&
cd app-dio-kubernetes &&
kubectl apply -f kubernetes/secret.yml --record &&
kubectl apply -f kubernetes/app-$APP_VERSION.yml --record &&
kubectl apply -f kubernetes/database-$DB_VERSION.yml --record &&
cd .. &&
rm -rf app-dio-kubernetes"