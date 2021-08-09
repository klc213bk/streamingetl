#!/bin/bash

KAFKA_HOME=/home/kafka/kafka_2.13-2.7.0
STREAMINGETL_HOME=/home/kafka/partycontact-sit/streamingetl

${KAFKA_HOME}/bin/kafka-server-start.sh ${STREAMINGETL_HOME}/env-sit/config/server.properties
