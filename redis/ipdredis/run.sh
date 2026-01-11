#!/bin/bash
# Tạo liên kết để lệnh ./ có hiệu lực trên Termux
ln -sf $(which redis-server) ./redis-server

./redis-server GunPow/redis/ipdredis/conf/redis-8071.conf > GunPow/redis/ipdredis/logs/redis-8071.log 2>&1 &
./redis-server GunPow/redis/ipdredis/conf/redis-8072.conf > GunPow/redis/ipdredis/logs/redis-8072.log 2>&1 &
./redis-server GunPow/redis/ipdredis/conf/redis-8073.conf > GunPow/redis/ipdredis/logs/redis-8073.log 2>&1 &
./redis-server GunPow/redis/ipdredis/conf/redis-8074.conf > GunPow/redis/ipdredis/logs/redis-8074.log 2>&1 &
./redis-server GunPow/redis/ipdredis/conf/redis-9071.conf > GunPow/redis/ipdredis/logs/redis-9071.log 2>&1 &
./redis-server GunPow/redis/ipdredis/conf/redis-9072.conf > GunPow/redis/ipdredis/logs/redis-9072.log 2>&1 &
./redis-server GunPow/redis/ipdredis/conf/redis-9073.conf > GunPow/redis/ipdredis/logs/redis-9073.log 2>&1 &
./redis-server GunPow/redis/ipdredis/conf/redis-9074.conf > GunPow/redis/ipdredis/logs/redis-9074.log 2>&1 &
