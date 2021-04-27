#!bin/bash

export CONFIGFILE=/hassan/config

apps_pw=`cat $CONFIGFILE/pwd.txt | awk -F "|" '{print $3}'`

cd $ADMIN_SCRIPTS_HOME
 { echo apps; } | sh ./adautocfg.sh
