#!/bin/bash
set -o nounset
#set -o errexit

ps axu|grep nginx|grep 'master' &>/dev/null
if [ $? = '0' ]
then
	PID=`ps axu|grep nginx|grep 'master'|awk '{print $2}'`
	kill $PID
fi
