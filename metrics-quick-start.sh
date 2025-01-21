#!/bin/sh
set -e

git clone https://github.com/dimonpoc/metrics.git
cd metrics
sudo mkdir -p /metrics-main-dev/{config,grafana-config,gafana-data,prometheus-data,loki-data,promtail-data}
sudo chown -R $(id -u):$(id -g) /metrics-main-dev/
touch /metrics-main-dev/grafana-config/grafana.ini
cp config/* /metrics-main-dev/config
docker compose up -d