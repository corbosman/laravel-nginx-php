#!/usr/bin/with-contenv bash

echo "Starting Scheduler"
crond -c /etc/cron.d -f
