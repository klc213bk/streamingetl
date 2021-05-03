#!/bin/bash

KAFKA_HOME=/home/oracle/kafka_2.13-2.7.0
APP_HOME=/home/oracle/gitrepository/transglobe/streamingetl/env-dev1

${KAFKA_HOME}/bin/connect-standalone.sh ${APP_HOME}/config/logminer_connect-standalone.properties ${APP_HOME}/config/OracleSourceConnector.properties

