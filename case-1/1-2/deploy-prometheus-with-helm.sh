#!/bin/bash

kubectl label nodes node2 nodetype=server1
kubectl --insecure-skip-tls-verify apply -f 12-2-create-monitor-ns.yml
helm upgrade --install internal-prometheus stable/prometheus -f prometheus-helm-values.yml --set server.nodeSelector.nodetype=server1 --namespace monitoring 

# Helm skip ssl workaround
# 
# run "kubectl proxy"
# cp ~/.kube/config ~/.kube/config.proxy
# change url in  ~/.kube/config.proxy  server: http://localhost:8001
#helm upgrade --install internal-prometheus stable/prometheus -f prometheus-helm-values.yml --set server.nodeSelector.nodetype=server1 --namespace monitoring --kubeconfig=/home/kerem/.kube/config.proxy
