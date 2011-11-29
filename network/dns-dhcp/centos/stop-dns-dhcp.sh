#!/bin/sh

CURR_DIR=`pwd`
TOP=$(dirname $0)/.
ROOT=$( (cd "$TOP" && pwd) )

cd "$ROOT"

/etc/init.d/named stop && /etc/init.d/dhcpd stop

