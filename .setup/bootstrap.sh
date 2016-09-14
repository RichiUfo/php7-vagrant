#!/usr/bin/env bash

DIR="/var/www/.setup/scripts/"
# Для запуска только одного скрипта
SCRIPT=""

echo "Iterate all scripts"
for file in ${DIR}*; do
  echo "***"
  echo "[SH Scripts]: ${file} [START]"
  . ${file}
  echo "[SH Scripts]: ${file} [END]"
done
