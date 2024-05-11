#!/bin/bash
# Developer: Jinhui Liu
# Email: liujinhui-ahu@foxmail.com
# Date: 11 May, 2024
docker_image_name="jdbc-debezium-connect"

yum update -y
yum install -y wget unzip tar
mkdir -p software libs /opt/module/mysql-connector-j

wget -O software/confluentinc-kafka-connect-rabbitmq-1.7.10.zip https://d1i4a15mxbxib1.cloudfront.net/api/plugins/confluentinc/kafka-connect-rabbitmq/versions/1.7.10/confluentinc-kafka-connect-rabbitmq-1.7.10.zip
wget -O software/confluentinc-kafka-connect-jdbc-10.7.6.zip https://d1i4a15mxbxib1.cloudfront.net/api/plugins/confluentinc/kafka-connect-jdbc/versions/10.7.6/confluentinc-kafka-connect-jdbc-10.7.6.zip
wget -O software/mysql-connector-j-8.4.0.tar.gz https://cdn.mysql.com//Downloads/Connector-J/mysql-connector-j-8.4.0.tar.gz

unzip software/confluentinc-kafka-connect-rabbitmq-1.7.10.zip -d /opt/module
unzip software/confluentinc-kafka-connect-jdbc-10.7.6.zip -d /opt/module
tar -zxvf software/mysql-connector-j-8.4.0.tar.gz -C /opt/module

cp /opt/module/confluentinc-kafka-connect-rabbitmq-1.7.10/lib/* libs
cp /opt/module/confluentinc-kafka-connect-jdbc-10.7.6/lib/* libs
cp /opt/module/mysql-connector-j-8.4.0/mysql-connector-j-8.4.0.jar libs

# build image
docker build -t $docker_image_name -f Dockerfile-connector-jdbc .
echo "build success"