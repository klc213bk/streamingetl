########## streamingetl
# preparation
1. copy ojdbc8-12.2.0.1.jar, jsqlparser-1.2 to {kafka installation}/libs

#initialization
1. start kafka server
  1.1 ./start-kafka-zookeeper.sh
  1.2 ./start-kafka-server.sh

2. create logminer table and create kafka topics
$ ./start-init-streaming.sh 

3. create logminer table and create kafka topics
$ ./start-init-streaming.sh 

3. scheduling tasks such as housekeeping
$ ./start-scheduling-tasks.sh 

Note:
# list topic
		$ ./bin/kafka-topics.sh --zookeeper localhost:2181 --list
		$ ./bin/kafka-topics.sh --bootstrap-server localhost:9092 --list
		
	#create topic
		./bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic [topic name]
	
		# topic name
		ebao.cdc.[tablename].0
	
	#delete topic
		./bin/kafka-topics.sh --delete --bootstrap-server localhost:9092  --topic [topic name]
		
		
		

 
3. start ignite server
  3.1 ./start-ignite-pcr420669.sh
(run initialload)
   ./start-initialload.sh
4. start springboot server
5. start consumer
  5.1 ./start-consumer.sh
6. start logminer
  6.1 ./start-logminer.sh
7. start health-check
  7.1 ./start-healthcheck-ebao.sh   

Deployment
1. enable supplemental log & create logminer user
	Reference LogminerSetup.txt
2. new DB objects
	1.1	logon as tglminer and create stored procedure 'LOGMINER_NOARCHIVE_SP'
		file: LOGMINER_NOARCHIVE_SP.sql
	1.2 new table TGLMINER.T_LOGMINER_SCN
		
		
3. # To add supplementa logging
	## 至少supplemental_log_data_min is enabled
	SQL> select supplemental_log_data_min, supplemental_log_data_pk, supplemental_log_data_all from v$database;
	if no, add supplemental_log_data_min
	SQL> ALTER DATABASE ADD SUPPLEMENTAL LOG DATA;
	
	## check if table-level logging
	SQL>   select *
	FROM DBA_LOG_GROUPS
	where TABLE_NAME in('T_CONTRACT_BENE','T_INSURED_LIST','T_POLICY_HOLDER','T_POLICY_HOLDER_LOG','T_CONTRACT_BENE_LOG','T_INSURED_LIST_LOG','T_POLICY_HOLDER_LOG','T_ADDRESS');
	
	## current scn 
	SQL> select current_scn from v$database;
	
	SQL> ALTER TABLE LS_EBAO.T_CONTRACT_PRODUCT_LOG ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_PRODUCTION_DETAIL ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_IMAGE ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_CONTRACT_EXTEND_CX ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_POLICY_CHANGE ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_COMMISION_FEE ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_POLICY_PRINT_JOB ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_PRODUCT_COMMISION ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_CONTRACT_EXTEND_LOG ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.JBPM_VARIABLEINSTANCE ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	
	SQL> ALTER TABLE LS_EBAO.T_POLICY_HOLDER ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_INSURED_LIST ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_CONTRACT_BENE ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_POLICY_HOLDER_LOG ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_INSURED_LIST_LOG ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_CONTRACT_BENE_LOG ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	SQL> ALTER TABLE LS_EBAO.T_ADDRESS ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
	
	# To drop supplementa logging
	SQL> ALTER TABLE LS_EBAO.T_CONTRACT_BENE DROP SUPPLEMENTAL LOG DATA(ALL) COLUMNS;		

3. 
	


4. deploy kafka server, ignite server, and config
5. run create-kafka-topics.sh
6. config logminer_connect_standardalone.properties and ORacleSourceConnector.properties
7. config consumer config.properties
8. config load properties
9. config spring-boot properties




SQL> select current_scn from v$database;



#Kafka 
# clean up kafka topic
rmdir C:\tmp\kafka-logs
rmdir C:\tmp\zookeeper

delete dirs:
C:\tmp\kafka-logs\{topicname-0}

# console consumer
./bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --from-beginning --topic [topic namem]

# Ignite
./bin/sqlline.sh --verbose=true -u jdbc:ignite:thin://127.0.0.1:10850/

./ignitevisorcmd.sh


#scp
scp xxx.zip kafka@elastic55:/home/kafka/xxx.zip