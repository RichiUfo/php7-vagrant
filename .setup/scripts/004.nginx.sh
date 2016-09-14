#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

apt-get install -y nginx
cp ${DIR}/../nginx/* /etc/nginx/sites-available/
rm /etc/nginx/sites-enabled/*
ln -s /etc/nginx/sites-available/* /etc/nginx/sites-enabled/

service nginx restart
