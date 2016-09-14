#!/usr/bin/env bash

cd /tmp
curl -LsS http://codeception.com/codecept.phar -o /usr/local/bin/codecept
chmod a+x /usr/local/bin/codecept
