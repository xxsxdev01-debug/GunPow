#!/bin/bash

# Tạo thư mục log ngay tại chỗ (vì đã cd vào gameredis)
mkdir -p logs

# Tạo liên kết lệnh để dùng được ./
ln -sf $(which redis-server) ./redis-server

# Khởi động các cổng Redis bằng đường dẫn tương đối
./redis-server conf/redis-8091.conf > logs/redis-8091.log 2>&1 &
./redis-server conf/redis-8092.conf > logs/redis-8092.log 2>&1 &
./redis-server conf/redis-8093.conf > logs/redis-8093.log 2>&1 &
./redis-server conf/redis-8094.conf > logs/redis-8094.log 2>&1 &
./redis-server conf/redis-9091.conf > logs/redis-9091.log 2>&1 &
./redis-server conf/redis-9092.conf > logs/redis-9092.log 2>&1 &
./redis-server conf/redis-9093.conf > logs/redis-9093.log 2>&1 &
./redis-server conf/redis-9094.conf > logs/redis-9094.log 2>&1 &

echo "--- Đã gửi lệnh khởi động 8 cổng GameRedis ---"
