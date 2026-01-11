#!/bin/bash
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::                BẮT ĐẦU KHỞI ĐỘNG ĐẠN ĐẠN ĐẢO 2             :::"
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::             Khởi động Cluster Redis Đạn Đạn Đảo 2          :::"

# Quay về thư mục Home của Termux để đảm bảo đường dẫn đúng
cd $HOME

cd GunPow/redis/gameredis
./run.sh
sleep 2

cd $HOME/GunPow/redis/ipdredis
./run.sh
sleep 2

echo "::             Khởi động Trình thông báo phân vùng!             ::"
cd $HOME/GunPow/ipdmain
./run.sh
sleep 2

echo "::             Khởi động Giao diện đăng nhập kênh!              ::"
cd $HOME/GunPow/channelserver
./run.sh
sleep 2

echo "::             Khởi động Dịch vụ quản lý chiến đấu!             ::"
cd $HOME/GunPow/battleManage
./run.sh
sleep 2

echo "::             Khởi động Dịch vụ chiến đấu thành công!          ::"
cd $HOME/GunPow/battleServer
./run.sh
sleep 2

echo "::             Khởi động Dịch vụ Chat thế giới!                 ::"
cd $HOME/GunPow/chatServer
./run.sh
sleep 2

echo "::             Khởi động Dịch vụ Bạn bè liên server!            ::"
cd $HOME/GunPow/friendServer
./run.sh
sleep 2

echo "::             Khởi động Dịch vụ Thông tin nhân vật!            ::"
cd $HOME/GunPow/playerServer
./run.sh
sleep 2

echo "::             Khởi động Dịch vụ Phòng thế giới!                ::"
cd $HOME/GunPow/roomServer
./run.sh
sleep 2

echo "::             Khởi động Dịch vụ Giao dịch game!                ::"
cd $HOME/GunPow/transactionServer
./run.sh
sleep 2

echo "::             Khởi động Dịch vụ Phân phối dữ liệu!             ::"
cd $HOME/GunPow/dispatchServer
./run.sh
sleep 2

echo "::             Khởi động Dịch vụ World Server!                  ::"
cd $HOME/GunPow/worldServer
./run.sh
sleep 2

echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::                ĐẠN ĐẠN ĐẢO 2 KHỞI ĐỘNG HOÀN TẤT            :::"
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
