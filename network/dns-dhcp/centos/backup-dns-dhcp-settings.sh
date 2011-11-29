#!/bin/sh

function backup_dns() {
  backup_file /var/named/chroot/etc/named.conf
  backup_file /var/named/main.zone
  backup_file /var/named/main.zone.rev
}

function backup_dhcp() {
  backup_file /etc/dhcp/dhcpd.conf
  backup_file /etc/sysconfig/dhcpd
}

function backup_file() {
  echo "Backing up ${1}..."
  
  full_path=$1
  file_name=$(basename "$full_path")
  file_dir=$(dirname "$full_path")
  file_dir=$(cd "$file_dir" && pwd)
  full_path=${file_dir}/${file_name}

  target_dir=${file_dir:1}
  target_file=${target_dir}/${file_name}

  test -d "${target_dir}" || mkdir -p "${target_dir}"
  test -f "${full_path}" && cp -p "${full_path}" "${target_file}"
}

CURR_DIR=`pwd`
TOP=$(dirname $0)/.
ROOT=$( (cd "$TOP" && pwd) )
NOW=$(date +"%m-%d-%Y")

cd "$ROOT"

#test -d backup || mkdir -p backup
#cd backup
#
#test -d $NOW && rm -rf $NOW 
#test -d $NOW || mkdir -p $NOW
#cd $NOW

test -d dns || mkdir -p dns
cd dns
backup_dns
cd ..

test -d dhcp || mkdir -p dhcp
cd dhcp
backup_dhcp
cd ..

echo "Backup complete"

