#!/bin/bash
# 1. Cài lệnh which nếu chưa có (chạy lệnh này trong Termux trước: pkg install debianutils)

# 2. Tạo liên kết lệnh (Giữ nguyên ý định của bạn)
ln -sf $(which redis-server) ./redis-server

# 3. Tạo thư mục logs ngay tại chỗ nếu chưa có
mkdir -p logs

# 4. Sử dụng đường dẫn tương đối (vì start.sh đã cd vào đây rồi)
./redis-server conf/redis-8071.conf > logs/redis-8071.log 2>&1 &
./redis-server conf/redis-8072.conf > logs/redis-8072.log 2>&1 &
./redis-server conf/redis-8073.conf > logs/redis-8073.log 2>&1 &
./redis-server conf/redis-8074.conf > logs/redis-8074.log 2>&1 &
./redis-server conf/redis-9071.conf > logs/redis-9071.log 2>&1 &
./redis-server conf/redis-9072.conf > logs/redis-9072.log 2>&1 &
./redis-server conf/redis-9073.conf > logs/redis-9073.log 2>&1 &
./redis-server conf/redis-9074.conf > logs/redis-9074.log 2>&1 &

echo "--- Khởi động IPDRedis hoàn tất ---"
