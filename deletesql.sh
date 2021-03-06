#!/bin/bash

service mysql stop
kill $(pgrep mysql)
apt-get --yes purge mariadb-server mariadb-client mysql-common
rm -rf /etc/mysql
apt-get autoremove --yes
apt-get autoclean --yes
apt-get update --yes
apt-get install mariadb-server mariadb-client
service mysql status
service mysq start
mysql_secure_installation