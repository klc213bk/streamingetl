#!/bin/bash

KAFKA_HOME=/home/steven/kafka_2.13-2.7.0
STREAMINGETL_HOME=/home/steven/gitrepo/transglobe/streamingetl

${KAFKA_HOME}/bin/zookeeper-server-start.sh ${STREAMINGETL_HOME}/env-dev2/config/zookeeper.properties

