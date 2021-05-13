#!/bin/bash

KAFKA_HOME=/home/feib/kafka_2.13-2.7.0

cd ${KAFKA_HOME}

./bin/zookeeper-server-stop.sh
