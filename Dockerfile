# syntax = docker/dockerfile:experimental
ARG PHP_VERSION=7.4
FROM corbosman/nginx-php:${PHP_VERSION}

# horizon
COPY services/horizon.sh /etc/services.d/horizon/run

# scheduler
COPY services/cron.sh /etc/services.d/cron/run
COPY services/crontab /etc/cron.d/laravel-scheduler

# migrations
COPY services/migrations.sh /etc/cont-init.d/migrations
