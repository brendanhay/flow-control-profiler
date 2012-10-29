#!/bin/sh

while true; do
  rabbitmqctl list_connections name state last_blocked_age last_blocked_by >> sample.data
  sleep 0.001
done
