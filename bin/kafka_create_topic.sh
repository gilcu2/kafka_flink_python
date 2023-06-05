#!/bin/bash

TOPIC=${1:-purchases}

cd $PROJECT_DIR/kafka || exit
docker compose exec broker \
  kafka-topics --create \
    --topic $TOPIC \
    --bootstrap-server localhost:9092 \
    --replication-factor 1 \
    --partitions 1