#!/bin/bash

KAFKA_HOME=/home/oracle/kafka_2.13-2.7.0

cd ${KAFKA_HOME}

./bin/kafka-topics.sh --zookeeper localhost:2181 --delete --topic ebao.cdc.test_t_policy_holder.0
./bin/kafka-topics.sh --zookeeper localhost:2181 --delete --topic ebao.cdc.test_t_insured_list.0
./bin/kafka-topics.sh --zookeeper localhost:2181 --delete --topic ebao.cdc.test_t_contract_bene.0
./bin/kafka-topics.sh --zookeeper localhost:2181 --delete --topic ebao.cdc.test_t_address.0