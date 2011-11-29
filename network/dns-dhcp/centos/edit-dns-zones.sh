#!/bin/sh

CURR_DIR=`pwd`
TOP=$(dirname $0)/.
ROOT=$( (cd "$TOP" && pwd) )

cd "$ROOT"

vim /var/named/main.zone && vim /var/named/main.zone.rev

