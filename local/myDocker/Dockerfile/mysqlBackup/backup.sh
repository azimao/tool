#!/bin/sh
if [ ! -d "/data" ]; then
   mkdir /data
fi
mysqldump -h$mysql_host  -u$mysql_user -p$mysql_pass $mysql_db > /data/$mysql_db-$(date +%Y%m%d_%H%M%S).sql
