#!/bin/bash

KAFKA_HOME=/home/steven/kafka_2.13-2.7.0

cd ${KAFKA_HOME}

./bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic EBAOUAT1.TGLMINER.T_LOGMINER_SCN