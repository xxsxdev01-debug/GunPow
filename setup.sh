#!/bin/bash
# 1. Cập nhật hệ thống và cài môi trường thực thi
pkg update -y && pkg upgrade -y
pkg install -y openjdk-17 mariadb redis git termux-auth termux-services

# 2. Tải mã nguồn về thư mục người dùng
git clone https://github.com/xxsxdev01-debug/GunPow.git $HOME/GunPow
cd $HOME/GunPow

# 3. Phân quyền và fix lỗi đường dẫn cho script chạy được trên Android
chmod +x *.sh
termux-fix-shebang *.sh

# 4. Thiết lập và khởi động Database (Phần quan trọng nhất)
# Khởi tạo dữ liệu MySQL lần đầu
mysql_install_db
# Chạy MySQL ngầm
mysqld_safe --datadir=${PREFIX}/var/lib/mysql & 
sleep 5
# Tạo database tên là 'gunpow' (hoặc tên tùy ý bạn)
mysql -e "CREATE DATABASE IF NOT EXISTS gunpow;"
# Chạy Redis ngầm
redis-server --daemonize yes

# 5. Thông báo hoàn tất
echo "Cài đặt thành công. Chạy ./start.sh để bắt đầu."
