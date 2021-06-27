@echo off 

set KAFKA_HOME=C:\kafka_2.13-2.7.0
set APP_HOME=C:\Users\ASDTEMP32\git\streamingetl\env-dev2

call %KAFKA_HOME%\bin\windows\connect-standalone.bat %APP_HOME%\config\logminer_connect-standalone.properties %APP_HOME%\config\OracleSourceConnector.properties

