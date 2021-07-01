#!/bin/bash

KAFKA_HOME=/home/kafka/kafka_2.13-2.7.0
STREAMINGETL_HOME=/home/kafka/streamingetl

${KAFKA_HOME}/bin/zookeeper-server-start.sh ${APP_HOME}/env-uat/config/zookeeper.properties

