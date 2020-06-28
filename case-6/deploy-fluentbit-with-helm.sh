#!/bin/bash
set -e
kubectl --insecure-skip-tls-verify apply -f create-logging-ns.yml
kubectl --insecure-skip-tls-verify apply -f external-elasticsearch-svc.yml -n logging
helm upgrade --install fluent-bit stable/fluent-bit -f fluentbit-helm-values.yml  -n logging
