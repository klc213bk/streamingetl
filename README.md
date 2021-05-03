# streamingetl

./bin/sqlline.sh --verbose=true -u jdbc:ignite:thin://127.0.0.1:10850/

# list topic
$ ./bin/kafka-topics.sh --zookeeper localhost:2181 --list

# delete topic
$ ./bin/kafka-topics.sh --zookeeper localhost:2181 --delete --topic remove-me