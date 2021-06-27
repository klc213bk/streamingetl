@echo off 
set KAFKA_HOME=C:\kafka_2.13-2.7.0

cd %KAFKA_HOME%\bin
windows\kafka-server-start.bat ..\config\server.properties
