#!/bin/bash

KAFKA_HOME=/home/oracle/kafka_2.13-2.7.0

cd ${KAFKA_HOME}

./bin/zookeeper-server-start.sh ./config/zookeeper.properties

