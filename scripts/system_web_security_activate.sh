#!/bin/bash

FILE_CONF="/var/lib/bitcoin/btc-rpc-explorer/app/auth.js"
DIR_BGEOMETRICS=/etc/Bgeometrics
DIR_WEB=/var/www/html/webconfig

echo "true" > $DIR_BGEOMETRICS/auth_web
sed -i "s/  \/\//  /g" $FILE_CONF
$DIR_WEB/scripts/btcrpcexplorer_restart.sh

