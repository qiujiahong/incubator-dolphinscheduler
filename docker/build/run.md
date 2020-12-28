

## 前台运行 

```bash 

docker run --name some-zookeeper -p 2181:2181 --restart always zookeeper:3.6.2

```


```bash 

docker run --name dolphinscheduler \
-e DATABASE_TYPE="mysql"  -e DATABASE_DRIVER="com.mysql.jdbc.Driver" \
-e DATABASE_HOST="10.54.221.95" -e DATABASE_PORT="3306" -e DATABASE_DATABASE="ds" \
-e DATABASE_USERNAME="root" -e DATABASE_PASSWORD="123456" \
-e ZOOKEEPER_QUORUM="10.54.221.95:2181" \
-p 8888:8888 \
qiujiahong/dolphinscheduler:1.3.5-SNAPSHOT all



```


```bash 

docker stop some-zookeeper
docker rm some-zookeeper

docker stop dolphinscheduler
docker rm dolphinscheduler 


```

## 后台运行


```bash 

# docker run --name some-zookeeper --restart always -d zookeepers
docker run --name some-zookeeper -p 2181:2181 --restart always -d zookeeper:3.6.2s


docker run -dit --name dolphinscheduler \
-e DATABASE_TYPE="mysql"  -e DATABASE_DRIVER="com.mysql.jdbc.Driver" \
-e DATABASE_HOST="127.0.0.1" -e DATABASE_PORT="3306" -e DATABASE_DATABASE="ds" \
-e DATABASE_USERNAME="root" -e DATABASE_PASSWORD="123456" \
-p 8888:8888 \
qiujiahong/dolphinscheduler:1.3.4 all

```