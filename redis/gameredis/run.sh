#!/bin/bash
./redis-server /redis/gameredis/conf/redis-8091.conf > /redis/gameredis/logs/redis-8091.log 2>&1 &
./redis-server /redis/gameredis/conf/redis-8092.conf > /redis/gameredis/logs/redis-8092.log 2>&1 &
./redis-server /redis/gameredis/conf/redis-8093.conf > /redis/gameredis/logs/redis-8093.log 2>&1 &
./redis-server /redis/gameredis/conf/redis-8094.conf > /redis/gameredis/logs/redis-8094.log 2>&1 &
./redis-server /redis/gameredis/conf/redis-9091.conf > /redis/gameredis/logs/redis-9091.log 2>&1 &
./redis-server /redis/gameredis/conf/redis-9092.conf > /redis/gameredis/logs/redis-9092.log 2>&1 &
./redis-server /redis/gameredis/conf/redis-9093.conf > /redis/gameredis/logs/redis-9093.log 2>&1 &
./redis-server /redis/gameredis/conf/redis-9094.conf > /redis/gameredis/logs/redis-9094.log 2>&1 &
