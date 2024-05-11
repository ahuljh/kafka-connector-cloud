#!/bin/bash
# Developer: Jinhui Liu
# Email: liujinhui-ahu@foxmail.com
# Date: 11 May, 2024

# you can find your credit by cloud website
docker login swr.cn-east-3.myhuaweicloud.com -u username -p password

# debezium
docker image tag jdbc-debezium-connect swr.cn-east-3.myhuaweicloud.com/release/debezium-connect:v2.0_sh_install_dependency_jar_240511
docker push swr.cn-east-3.myhuaweicloud.com/release/debezium-connect:v2.0_sh_install_dependency_jar_240511

# kafka
docker image tag quay.io/debezium/kafka swr.cn-east-3.myhuaweicloud.com/release/kafka:1.0
docker push swr.cn-east-3.myhuaweicloud.com/release/kafka:1.0

# kafka-ui
docker image tag 99307ab28a49 swr.cn-east-3.myhuaweicloud.com/release/kafka-ui:1.0
docker push swr.cn-east-3.myhuaweicloud.com/release/kafka-ui:1.0