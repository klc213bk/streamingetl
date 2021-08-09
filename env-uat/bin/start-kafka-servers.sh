#!/bin/bash

KAFKA_HOME=/home/kafka/kafka_2.13-2.7.0
STREAMINGETL_HOME=/home/kafka/partycontact-uat/streamingetl

${KAFKA_HOME}/bin/kafka-server-start.sh ${STREAMINGETL_HOME}/env-uat/config/server.properties
