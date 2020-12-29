#!/bin/bash 

ip=$(ifconfig en0  | grep 'inet ' |awk '{print $2}')

# 运行zookeeper 
docker run --name some-zookeeper -p 2181:2181 --restart always -d zookeeper:3.6.2

# 运行dolphinscheduler 
docker run --name dolphinscheduler \
-e DATABASE_TYPE="mysql"  -e DATABASE_DRIVER="com.mysql.jdbc.Driver" \
-e DATABASE_HOST="${ip}" -e DATABASE_PORT="3306" -e DATABASE_DATABASE="ds" \
-e DATABASE_USERNAME="root" -e DATABASE_PASSWORD="123456" \
-e ZOOKEEPER_QUORUM="${ip}:2181" \
-p 8888:8888  -d \
-m 5g --cpus=3  \
qiujiahong/dolphinscheduler:1.3.5-SNAPSHOT all

