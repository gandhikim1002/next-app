#!/bin/sh

set -e

echo start npm install 
npm i
echo end npm install 

exec "$@"