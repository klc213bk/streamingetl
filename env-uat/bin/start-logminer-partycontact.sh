#!/bin/bash

KAFKA_HOME=/home/kafka/kafka_2.13-2.7.0
STREAMINGETL_HOME=/home/kafka/streamingetl

${KAFKA_HOME}/bin/connect-standalone.sh ${STREAMINGETL_HOME}/env-uat/config/logminer_connect-standalone-partycontact.properties ${STREAMINGETL_HOME}/env-uat/config/OracleSourceConnector-partycontact.properties
