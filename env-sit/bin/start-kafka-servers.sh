#!/bin/bash

KAFKA_HOME=/home/kafka/kafka_2.13-2.7.0
APP_HOME=/home/kafka/streamingetl/env-sit

${KAFKA_HOME}/bin/kafka-server-start.sh ${APP_HOME}/config/server.properties
