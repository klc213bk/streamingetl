#!/bin/bash

STREAMINGETL_HOME=/home/steven/gitrepo/transglobe/streamingetl
KAFKA_HOME=/home/steven/kafka_2.13-2.7.0

java -cp "${STREAMINGETL_HOME}/lib/streamingetl-common-1.0.jar:${STREAMINGETL_HOME}/lib/*" -Dprofile.active=env-dev1 com.transglobe.streamingetl.common.app.InitStreamingApp

${KAFKA_HOME}/bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ebao.cdc.t_logminer_scn.0