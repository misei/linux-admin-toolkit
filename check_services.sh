#!/bin/bash

SERVICES=("ssh" "cron" "network")

for service in "${SERVICES[@]}"; do
    systemctl is-active --quiet $service && \
        echo "$service is running" || \
        echo "$service is NOT running"
done
