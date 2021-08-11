#!/bin/bash

STREAMINGETL_HOME=/home/steven/gitrepo/transglobe/streamingetl

java -Dspring.profiles.active=dev1 -jar ${STREAMINGETL_HOME}/lib/streamingetl-scheduling-1.0.jar