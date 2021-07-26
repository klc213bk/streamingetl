#!/bin/bash

STREAMINGETL_HOME=/home/kafka/streamingetl

java -cp "${STREAMINGETL_HOME}/lib/streamingetl-common-1.0.jar:${STREAMINGETL_HOME}/lib/*" -Dprofile.active=env-uat com.transglobe.streamingetl.common.app.InitStreamingApp
