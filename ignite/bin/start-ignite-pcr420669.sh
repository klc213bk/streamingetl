#!/bin/bash

#IGNITE_HOME=/home/oracle/apache-ignite-2.9.1-bin
IGNITE_HOME=/home/feib/apache-ignite-2.9.1-bin

APP_HOME=/home/feib/gitrepository/transglobe/streamingetl

${IGNITE_HOME}/bin/ignite.sh ${APP_HOME}/ignite/config/pcr420669-ignite.xml

