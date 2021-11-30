# LARAVEL-NGINX-PHP

[![Build Status](https://travis-ci.org/corbosman/laravel-nginx-php.svg?branch=master)](https://travis-ci.org/corbosman/laravel-nginx-php)

This is a docker image that builds on [corbosman/nginx-php](https://hub.docker.com/repository/docker/corbosman/nginx-php) to provide an easy to use docker image for laravel apps. You can run this container directly from your source directory. Note that it does not provide any additional services like databases, redis, etc. If you need those, you can easily run those together with this image through a docker-compose file. This image does provide a scheduler, migrations, and can start horizon if you use it.  Feel free to request additonal services through the github repo issue tracker.

# Supported Tags

This image can be run with different versions of PHP. Pick one of the versions below. Since these images are built automatically every day, it will always be the latest minor release within a version.

* <code>[8.1](https://github.com/corbosman/laravel-nginx-php/blob/master/Dockerfile)</code>, <code>[8](https://github.com/corbosman/laravel-nginx-php/blob/master/Dockerfile)</code>, <code>[latest](https://github.com/corbosman/laravel-nginx-php/blob/master/Dockerfile)</code>

* <code>[8.0](https://github.com/corbosman/laravel-nginx-php/blob/master/Dockerfile)</code>

* <code>[7.4](https://github.com/corbosman/laravel-nginx-php/blob/master/Dockerfile)</code>, <code>[7](https://github.com/corbosman/laravel-nginx-php/blob/master/Dockerfile)</code>

* <code>[7.3](https://github.com/corbosman/laravel-nginx-php/blob/master/Dockerfile)</code>

* <code>[7.2](https://github.com/corbosman/laravel-nginx-php/blob/master/Dockerfile)</code>

* <code>[7.1](https://github.com/corbosman/laravel-nginx-php/blob/master/Dockerfile)</code>

If you want to pin a specific version, there are also minor versions available.

# Quick Reference

* **Github Repository**<br>
  https://github.com/corbosman/laravel-nginx-php


# How to use this image

This image will start up nginx with php-fpm listening on port 80.  The default site config expects the application to be mounted on /app, with the documentroot on /app/public.

 ```
$ docker run -e DB_HOST=postgres -e REDIS_HOST=redis -v ~/Code/myapp:/app laravel-nginx-php
 [s6-init] making user provided files available at /var/run/s6/etc...exited 0.
 [s6-init] ensuring user provided files have correct perms...exited 0.
 [fix-attrs.d] applying ownership & permissions fixes...
 [fix-attrs.d] done.
 [cont-init.d] executing container initialization scripts...
 [cont-init.d] migrations: executing... 
 Nothing to migrate.
 [cont-init.d] migrations: exited 0.
 [cont-init.d] done.
 [services.d] starting services
 Starting Horizon
 [services.d] done.
 [27-Apr-2020 13:29:59] NOTICE: fpm is running, pid 214
 [27-Apr-2020 13:29:59] NOTICE: ready to handle connections
 Horizon started successfully.
 ```

## docker-compose

This image does not give you a full developer environment for your laravel application. There are other images for that. Any additional services like mysql or redis you need alongside this image can be started using docker-compose.  Refer to the docker-compose documentation for more information. 

## timezone

The default timezone is Europe/Amsterdam. To use your own timezone add a TZ environment variable.

```
docker run -v ~/Code/myapp:/app corbosman/laravel-nginx-php:7.4 date
Sun Oct 20 14:14:55 CEST 2019
```

```
docker run -e TZ=America/New_York -v ~/Code/myapp:/app corbosman/laravel-nginx-php:7.4 date
Sun Oct 20 08:14:55 EDT 2019
```

##  Note
I use this image myself on personal projects. Feel free to comment or ask questions on the github repo. 
