# streamingetl
Deployment
1. stored procedure LOGMINER_NOARCHIVE_SP is installed
2. deploy kafka server, ignite server, and config
3. run create-kafka-topics.sh
4. config logminer_connect_standardalone.properties and ORacleSourceConnector.properties
5. config consumer config.properties
6. config load properties
7. config spring-boot properties


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