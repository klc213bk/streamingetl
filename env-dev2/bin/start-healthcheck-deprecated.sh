#!/bin/bash

STREAMINGETL_HOME=/home/feib/gitrepository/transglobe/streamingetl

java -cp "${STREAMINGETL_HOME}/lib/streamingetl-common-1.0.jar:${STREAMINGETL_HOME}/lib/*" -Dprofile.active=env-dev2 com.transglobe.streamingetl.common.app.HealthCheckApp
