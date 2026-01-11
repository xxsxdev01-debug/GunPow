#!/bin/bash
# 1. Tạo thư mục data và logs (Bắt buộc phải có để Redis lưu file)
mkdir -p logs data

# 2. Sửa lệnh ln: Trỏ thẳng vào đường dẫn gốc của Termux (Bỏ qua lệnh which)
ln -sf /data/data/com.termux/files/usr/bin/redis-server ./redis-server

# 3. Khởi động các cổng (Giữ nguyên phần dưới của bạn)
./redis-server conf/redis-8071.conf > logs/redis-8071.log 2>&1 &
./redis-server conf/redis-8072.conf > logs/redis-8072.log 2>&1 &
./redis-server conf/redis-8073.conf > logs/redis-8073.log 2>&1 &
./redis-server conf/redis-8074.conf > logs/redis-8074.log 2>&1 &
./redis-server conf/redis-9071.conf > logs/redis-9071.log 2>&1 &
./redis-server conf/redis-9072.conf > logs/redis-9072.log 2>&1 &
./redis-server conf/redis-9073.conf > logs/redis-9073.log 2>&1 &
./redis-server conf/redis-9074.conf > logs/redis-9074.log 2>&1 &

echo "--- Khởi động IPDRedis hoàn tất ---"
