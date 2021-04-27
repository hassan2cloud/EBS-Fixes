#!bin/bash

export CONFIGFILE=/hassan/config

apps_pw=`cat $CONFIGFILE/pwd.txt | awk -F "|" '{print $3}'`

cd /ebs01/oracle/EBSSID/db/tech_st/12.1.0.2/appsutil/scripts/EBS_dbhost
{ echo $apps_pw; } | sh ./adautocfg.sh
