#!/bin/bash

IGNITE_HOME=/home/kafka/apache-ignite-2.9.1-bin
STREAMINGETL_HOME=/home/kafka/streamingetl

${IGNITE_HOME}/bin/ignite.sh ${STREAMINGETL_HOME}/env-sit/config/ignite-config-party.xml

