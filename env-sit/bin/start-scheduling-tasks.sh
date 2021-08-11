#!/bin/bash

STREAMINGETL_HOME=/home/kafka/partycontact-sit/streamingetl

java -Dspring.profiles.active=sit -jar ${STREAMINGETL_HOME}/lib/streamingetl-scheduling-1.0.jar