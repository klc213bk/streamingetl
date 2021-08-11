#!/bin/bash

STREAMINGETL_HOME=/home/kafka/partycontact-uat/streamingetl

java -Dspring.profiles.active=uat -jar ${STREAMINGETL_HOME}/lib/streamingetl-scheduling-1.0.jar