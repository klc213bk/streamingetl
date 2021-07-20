
@echo off 
set KAFKA_HOME=C:\kafka_2.13-2.7.0

cd %KAFKA_HOME%\bin

windows/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ebao.cdc.test_t_policy_holder.0
windows/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ebao.cdc.test_t_insured_list.0
windows/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ebao.cdc.test_t_contract_bene.0
windows/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ebao.cdc.test_t_policy_holder_log.0
windows/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ebao.cdc.test_t_insured_list_log.0
windows/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ebao.cdc.test_t_contract_bene_log.0
windows/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ebao.cdc.test_t_address.0
windows/kafka-topics.sh --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic ebao.cdc.t_streaming_etl_health_cdc.0