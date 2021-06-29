#!/bin/bash

HEALTH_HOME=/home/kafka/streamingetl-common

java -cp "${HEALTH_HOME}/target/streamingetl-common-1.0.jar:${HEALTH_HOME}/lib/*" -Dprofile.active=env-dev1 com.transglobe.streamingetl.common.app.HealthCheckApp
