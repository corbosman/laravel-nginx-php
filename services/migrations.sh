#!/usr/bin/with-contenv sh

(cd /app && php artisan migrate --force)
