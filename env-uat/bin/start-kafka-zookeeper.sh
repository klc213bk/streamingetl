#!/bin/bash

KAFKA_HOME=/home/kafka/kafka_2.13-2.7.0
APP_HOME=/home/kafka/streamingetl/env-uat

${KAFKA_HOME}/bin/zookeeper-server-start.sh ${APP_HOME}/config/zookeeper.properties

