#!/bin/bash
set -o nounset
set -o errexit

ps axu|grep 'mysql'|grep -v 'grep' &>/dev/null
if [ $? != '0' ]
then
	echo "Now there are mysql instance running"
	exit 1
fi
