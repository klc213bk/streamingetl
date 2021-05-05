#!/bin/bash

LOGMINER_HOME=/home/oracle/gitrepository/kafka-connect-oracle
STREAMINGETL_HOME=/home/oracle/gitrepository/transglobe/streamingetl

cd ${LOGMINER_HOME}
mvn clean install

cp ${LOGMINER_HOME}/target/kafka-connect-oracle-1.0.jar ${STREAMINGETL_HOME}/connectors/oracle-logminer-connector/kafka-connect-oracle-1.0.jar