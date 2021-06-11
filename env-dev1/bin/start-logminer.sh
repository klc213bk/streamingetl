#!/bin/bash

KAFKA_HOME=/home/steven/kafka_2.13-2.7.0
APP_HOME=/home/steven/gitrepo/transglobe/streamingetl/env-dev1

if [ -e ${KAFKA_HOME}/libs/ojdbc8-12.2.0.1.jar ]
then
    ${KAFKA_HOME}/bin/connect-standalone.sh ${APP_HOME}/config/logminer_connect-standalone.properties ${APP_HOME}/config/OracleSourceConnector.properties
else
    echo "oracle drive file does not exist"
fi


