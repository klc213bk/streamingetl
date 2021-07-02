#!/bin/bash

KAFKA_HOME=/home/steven/kafka_2.13-2.7.0
STREAMINGETL_HOME=/home/steven/gitrepo/transglobe/streamingetl

${KAFKA_HOME}/bin/connect-standalone.sh ${STREAMINGETL_HOME}/env-dev1/config/logminer_connect-standalone.properties ${APP_HOME}/config/OracleSourceConnector.properties
