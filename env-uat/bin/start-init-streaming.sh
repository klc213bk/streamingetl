#!/bin/bash

KAFKA_HOME=/home/kafka/kafka_2.13-2.7.0
STREAMINGETL_HOME=/home/kafka/partycontact-uat/streamingetl

java -cp "${STREAMINGETL_HOME}/lib/streamingetl-common-1.0.jar:${STREAMINGETL_HOME}/lib/*" -Dprofile.active=env-uat com.transglobe.streamingetl.common.app.InitStreamingApp
