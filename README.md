# streamingetl
#Sart seq
1. start zookeper
2. start kafkaserver
3. start ignite server
(run initialload)
4. start springboot server
5. start consumer
6. start logminer

Deployment
1. stored procedure LOGMINER_NOARCHIVE_SP is installed
2. deploy kafka server, ignite server, and config
3. run create-kafka-topics.sh
4. config logminer_connect_standardalone.properties and ORacleSourceConnector.properties
5. config consumer config.properties
6. config load properties
7. config spring-boot properties

# To add supplementa logging
SQL> ALTER TABLE LS_EBAO.T_POLICY_HOLDER ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_INSURED_LIST ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_CONTRACT_BENE ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_POLICY_HOLDER_LOG ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_INSURED_LIST_LOG ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_CONTRACT_BENE_LOG ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_ADDRESS ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_STREAMING_ETL_HEALTH_CDC ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;

# To drop supplementa logging
SQL> ALTER TABLE LS_EBAO.T_CONTRACT_BENE DROP SUPPLEMENTAL LOG DATA(ALL) COLUMNS;



#Kafka 
# clean up kafka topic
rmdir C:\tmp\kafka-logs
rmdir C:\tmp\zookeeper


# list topic
$ ./bin/kafka-topics.sh --zookeeper localhost:2181 --list
$ ./bin/kafka-topics.bat --bootstrap-server localhost:9092 --list

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


# Ignite
./bin/sqlline.sh --verbose=true -u jdbc:ignite:thin://127.0.0.1:10850/

./ignitevisorcmd.sh


#scp
scp xxx.zip kafka@elastic55:/home/kafka/xxx.zip