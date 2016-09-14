#!/usr/bin/env bash

# PHP 7.0
add-apt-repository -y ppa:ondrej/php

sudo apt-get update
apt-get -y upgrade

apt-get -y install curl
apt-get -y install php7.0 php7.0-fpm php7.0-cli php7.0-common php7.0-json \
    php7.0-opcache php7.0-mysql php7.0-phpdbg php7.0-mbstring \
    php7.0-tidy php7.0-dev php7.0-intl \
    php7.0-gd php7.0-curl php7.0-zip php7.0-xml

service php7.0-fpm restart