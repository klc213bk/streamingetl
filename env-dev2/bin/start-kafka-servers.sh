#!/bin/bash

KAFKA_HOME=/home/feib/kafka_2.13-2.7.0

cd ${KAFKA_HOME}

./bin/kafka-server-start.sh ./config/server.properties
