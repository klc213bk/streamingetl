#!/bin/bash

KAFKA_HOME=/home/feib/kafka_2.13-2.7.0
APP_HOME=/home/feib/gitrepository/transglobe/streamingetl

${KAFKA_HOME}/bin/connect-standalone.sh ${APP_HOME}/config/logminer_connect-standalone.properties ${APP_HOME}/config/OracleSourceConnector.properties

