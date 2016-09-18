#!/bin/bash
set -o nounset
set -o errexit
if [ ! -e '/usr/local/webserver/nginx/logs' ]
then
	mkdir -p /usr/local/webserver/nginx/logs
fi

grep '^www:' /etc/group|grep -v 'grep' &>/dev/null
if [ $? != '0' ]
then
	groupadd www -g 302 && useradd -u 302 -g www -c "Web Server" www -s /sbin/nologin -M
fi
