#!/bin/sh


TOPDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../"

if [ ! -f $TOPDIR/.env ] ; then
  echo .env file is missing
  exit
else
  source $TOPDIR/.env
fi

mkdir -p $TOPDIR/var/log
echo "starting front-end server"
cd $TOPDIR
./node_modules/nodemon/bin/nodemon.js server.js > $TOPDIR/var/log/frontend.log 
