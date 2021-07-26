#!/bin/bash

STREAMINGETL_HOME=/home/steven/gitrepo/transglobe/streamingetl

java -cp "${STREAMINGETL_HOME}/lib/streamingetl-common-1.0.jar:${STREAMINGETL_HOME}/lib/*" -Dprofile.active=env-dev1 com.transglobe.streamingetl.common.app.InitStreamingApp
