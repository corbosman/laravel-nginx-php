#!/usr/bin/with-contenv bash

if grep -q horizon /app/composer.json; then
  echo "Starting Horizon"
  (cd /app && php artisan horizon)
else
  echo "Skipping Horizon"
  s6-svc -d /var/run/s6/services/horizon
fi
