#!/bin/bash

KAFKA_HOME=/home/oracle/kafka_2.13-2.7.0

cd ${KAFKA_HOME}

./bin/kafka-server-start.sh ./config/server.properties
