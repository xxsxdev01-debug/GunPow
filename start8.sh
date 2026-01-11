#!/bin/bash
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::                BẮT ĐẦU KHỞI ĐỘNG ĐẠN ĐẠN ĐẢO 2             :::"
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::             Khởi động Cluster Redis Đạn Đạn Đảo 2          :::"
cd /redis/gameredis
./run8.sh
sleep 2

cd /redis/ipdredis
./run8.sh
sleep 2

echo "::             Khởi động Trình thông báo phân vùng!             ::"
cd /ipdmain
./run8.sh
sleep 2

echo "::             Khởi động Giao diện đăng nhập kênh!              ::"
cd /channelserver
./run8.sh
sleep 2

echo "::             Khởi động Dịch vụ quản lý chiến đấu!             ::"
cd /battleManage
./run8.sh
sleep 2

echo "::             Khởi động Dịch vụ chiến đấu thành công!          ::"
cd /battleServer
./run8.sh
sleep 2

echo "::             Khởi động Dịch vụ Chat thế giới!                 ::"
cd /chatServer
./run8.sh
sleep 2

echo "::             Khởi động Dịch vụ Bạn bè liên server!            ::"
cd /friendServer
./run8.sh
sleep 2

echo "::             Khởi động Dịch vụ Thông tin nhân vật!            ::"
cd /playerServer
./run8.sh
sleep 2

echo "::             Khởi động Dịch vụ Phòng thế giới!                ::"
cd /roomServer
./run8.sh
sleep 2

echo "::             Khởi động Dịch vụ Giao dịch game!                ::"
cd /transactionServer
./run8.sh
sleep 2

echo "::             Khởi động Dịch vụ Phân phối dữ liệu!             ::"
cd /dispatchServer
./run8.sh
sleep 2

echo "::             Khởi động Dịch vụ World Server!                  ::"
cd /worldServer
./run8.sh
sleep 2

echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::                ĐẠN ĐẠN ĐẢO 2 KHỞI ĐỘNG HOÀN TẤT            :::"
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
