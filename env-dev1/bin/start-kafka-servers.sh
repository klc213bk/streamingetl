#!/bin/bash

KAFKA_HOME=/home/steven/kafka_2.13-2.7.0
APP_HOME=/home/steven/gitrepo/transglobe/streamingetl/env-dev1

${KAFKA_HOME}/bin/kafka-server-start.sh ${APP_HOME}/config/server.properties
