#!/bin/bash
set -e
helm upgrade --install grafana stable/grafana -f grafana-helm-values.yml -n monitoring
