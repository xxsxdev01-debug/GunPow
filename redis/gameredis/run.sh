#!/bin/bash

# Tạo thư mục log nếu chưa có để tránh lỗi
mkdir -p GunPow/redis/gameredis/logs

# Khởi động các cổng Redis bằng redis-server của hệ thống
redis-server GunPow/redis/gameredis/conf/redis-8091.conf > GunPow/redis/gameredis/logs/redis-8091.log 2>&1 &
redis-server GunPow/redis/gameredis/conf/redis-8092.conf > GunPow/redis/gameredis/logs/redis-8092.log 2>&1 &
redis-server GunPow/redis/gameredis/conf/redis-8093.conf > GunPow/redis/gameredis/logs/redis-8093.log 2>&1 &
redis-server GunPow/redis/gameredis/conf/redis-8094.conf > GunPow/redis/gameredis/logs/redis-8094.log 2>&1 &
redis-server GunPow/redis/gameredis/conf/redis-9091.conf > GunPow/redis/gameredis/logs/redis-9091.log 2>&1 &
redis-server GunPow/redis/gameredis/conf/redis-9092.conf > GunPow/redis/gameredis/logs/redis-9092.log 2>&1 &
redis-server GunPow/redis/gameredis/conf/redis-9093.conf > GunPow/redis/gameredis/logs/redis-9093.log 2>&1 &
redis-server GunPow/redis/gameredis/conf/redis-9094.conf > GunPow/redis/gameredis/logs/redis-9094.log 2>&1 &

echo "--- Đã gửi lệnh khởi động 8 cổng Redis ---"
