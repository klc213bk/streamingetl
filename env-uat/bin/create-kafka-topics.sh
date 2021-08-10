#!/bin/bash

KAFKA_HOME=/home/kafka/kafka_2.13-2.7.0

cd ${KAFKA_HOME}

./bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic EBAOPRD1.TGLMINER.T_LOGMINER_SCN
