#!/bin/bash
set -o nounset
set -o errexit
grep '^mysql:' /etc/group|grep -v 'grep' &>/dev/null
if [ $? != '0' ]
then
	groupadd mysql -g 300 && useradd -u 300 -g mysql -c "Mysql Server" mysql -s /sbin/nologin -M
fi
