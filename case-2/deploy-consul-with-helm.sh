#!/bin/bash
set -e
kubectl --insecure-skip-tls-verify apply -f consul-gossip-encryption-key.yml
helm repo add hashicorp https://helm.releases.hashicorp.com
helm upgrade --install consul hashicorp/consul -f consul-helm-values.yml  --kubeconfig=/home/kerem/kubeconfig.proxy --version 0.20.1
