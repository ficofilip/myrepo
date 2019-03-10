#!/bin/bash

docker run --mount type=bind,source=/opt/run/webphp/log,target=/var/log/apache2 --mount type=bind,source=/opt/run/webphp/config/apache2,target=/etc/apache2 --expose=80 -d ficofilip/webserver_php:zadatak1

