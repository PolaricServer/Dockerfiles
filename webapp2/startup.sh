#!/bin/bash

#
# We may use arguments to override server settings in config
# when starting container
#
if [ "$1" ]; then
    echo "SERVER(\"$1\")" >> /etc/polaric-webapp2/config.js
fi
if [ "$2" ]; then
    echo "WSPREFIX(\"$2\")" >> /etc/polaric-webapp2/config.js
fi
if [ "$1" ]; then
    echo "AJAXPREFIX(\"$3\")" >> /etc/polaric-webapp2/config.js
fi

apache2ctl start
while true; do sleep 10; done
