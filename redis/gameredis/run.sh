#!/bin/bash

# 1. Tạo cả thư mục logs và data (Cần data để lưu DB của Redis)
mkdir -p logs data

# 2. Sửa lệnh ln: Trỏ thẳng vào đường dẫn gốc của Termux để bỏ qua lỗi 'which'
ln -sf /data/data/com.termux/files/usr/bin/redis-server ./redis-server

# 3. Khởi động 8 cổng Redis bằng đường dẫn tương đối
./redis-server conf/redis-8091.conf > logs/redis-8091.log 2>&1 &
./redis-server conf/redis-8092.conf > logs/redis-8092.log 2>&1 &
./redis-server conf/redis-8093.conf > logs/redis-8093.log 2>&1 &
./redis-server conf/redis-8094.conf > logs/redis-8094.log 2>&1 &
./redis-server conf/redis-9091.conf > logs/redis-9091.log 2>&1 &
./redis-server conf/redis-9092.conf > logs/redis-9092.log 2>&1 &
./redis-server conf/redis-9093.conf > logs/redis-9093.log 2>&1 &
./redis-server conf/redis-9094.conf > logs/redis-9094.log 2>&1 &

echo "--- Đã gửi lệnh khởi động 8 cổng GameRedis ---"
