#!/bin/bash

# start zookeeper
$KAFKA_HOME/$KAFKA_VER/bin/zookeeper-server-start.sh $KAFKA_HOME/$KAFKA_VER/config/zookeeper.properties &

# start kafka broker
$KAFKA_HOME/$KAFKA_VER/bin/kafka-server-start.sh $KAFKA_HOME/$KAFKA_VER/config/server.properties