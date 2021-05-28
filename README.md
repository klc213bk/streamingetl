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
SQL> ALTER TABLE LS_EBAO.T_ADDRESS ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;
SQL> ALTER TABLE LS_EBAO.T_STREAMING_ETL_HEALTH_CDC ADD SUPPLEMENTAL LOG DATA(ALL) COLUMNS;

# To drop supplementa logging
SQL> ALTER TABLE LS_EBAO.T_CONTRACT_BENE DROP SUPPLEMENTAL LOG DATA(ALL) COLUMNS;



#Kafka 
1. set auto.create.topics.enable=false

# topic name
ebao.cdc.[tablename].0

# pcr420669
ebao.cdc.t_policy_holder.0
ebao.cdc.t_insured_list.0
ebao.cdc.t_contract_bene.0
ebao.cdc.t_address.0

# list topic
$ ./bin/kafka-topics.sh --zookeeper localhost:2181 --list


# Ignite
./bin/sqlline.sh --verbose=true -u jdbc:ignite:thin://127.0.0.1:10850/

./ignitevisorcmd.sh



#scp
scp xxx.zip kafka@elastic55:/home/kafka/xxx.zip