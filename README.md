# streamingetl
#Sart seq
1. start zookeper
  1.1 ./start-kafka-zookeeper.sh
2. start kafkaserver
  2.1 copy ojdbc8-12.2.0.1.jar, jsqlparser-1.2 to {kafka installation}/libs
  2.2 ./start-kafka-server.sh
  (run create-kafka-topics.sh for the first time )
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
  7.1 ./start-healthcheck.sh   

Deployment
1. stored procedure LOGMINER_NOARCHIVE_SP is installed
1.1 new table tgliner.T_STREAMING-ETL-HEALTH_CDC
2. deploy kafka server, ignite server, and config
3. run create-kafka-topics.sh
4. config logminer_connect_standardalone.properties and ORacleSourceConnector.properties
5. config consumer config.properties
6. config load properties
7. config spring-boot properties

# To add supplementa logging
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

SQL> ALTER TABLE LS_EBAO.T_POLICY_HOLDER ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_INSURED_LIST ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_CONTRACT_BENE ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_POLICY_HOLDER_LOG ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_INSURED_LIST_LOG ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_CONTRACT_BENE_LOG ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_ADDRESS ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;

SQL> ALTER TABLE TGLMINER.T_STREAMING_ETL_HEALTH_CDC ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;

# To drop supplementa logging
SQL> ALTER TABLE LS_EBAO.T_CONTRACT_BENE DROP SUPPLEMENTAL LOG DATA(ALL) COLUMNS;


SQL> select current_scn from v$database;



#Kafka 
# clean up kafka topic
rmdir C:\tmp\kafka-logs
rmdir C:\tmp\zookeeper


# list topic
$ ./bin/kafka-topics.sh --zookeeper localhost:2181 --list
$ ./bin/kafka-topics.sh --bootstrap-server localhost:9092 --list

# topic name
ebao.cdc.[tablename].0

# topics for PCR420669 
ebao.cdc.t_policy_holder.0
ebao.cdc.t_insured_list.0
ebao.cdc.t_contract_bene.0
ebao.cdc.t_policy_holder_log.0
ebao.cdc.t_insured_list_log.0
ebao.cdc.t_contract_bene_log.0
ebao.cdc.t_address.0

# topics for PCR420669 test
ebao.cdc.test_t_policy_holder.0
ebao.cdc.test_t_insured_list.0
ebao.cdc.test_t_contract_bene.0
ebao.cdc.test_t_policy_holder_log.0
ebao.cdc.test_t_insured_list_log.0
ebao.cdc.test_t_contract_bene_log.0
ebao.cdc.test_t_address.0


#create topic
./bin/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic [topic name]

#delete topic
./bin/kafka-topics.sh --delete --bootstrap-server localhost:9092  --topic [topic name]

delete dirs:
C:\tmp\kafka-logs\{topicname-0}

# console consumer
./bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --from-beginning --topic [topic namem]

# Ignite
./bin/sqlline.sh --verbose=true -u jdbc:ignite:thin://127.0.0.1:10850/

./ignitevisorcmd.sh


#scp
scp xxx.zip kafka@elastic55:/home/kafka/xxx.zip