#!/bin/bash
set -e
helm upgrade --install nginx-ingress stable/nginx-ingress -f nginx-ingress-helm-values.yml
