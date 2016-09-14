#!/usr/bin/env bash

apt-get install php-xdebug

echo "zend_extension=xdebug.so" > /etc/php/7.0/mods-available/xdebug.ini

ln -sf /etc/php/7.0/mods-available/xdebug.ini /etc/php/7.0/fpm/conf.d/20-xdebug.ini
ln -sf /etc/php/7.0/mods-available/xdebug.ini /etc/php/7.0/cli/conf.d/20-xdebug.ini

service php7.0-fpm restart

# Check it
php -m | grep -i xdebug