#!/bin/sh

CURR_DIR=`pwd`
TOP=$(dirname $0)/.
ROOT=$( (cd "$TOP" && pwd) )

cd "$ROOT"

watch tail -n 20 /var/log/messages

