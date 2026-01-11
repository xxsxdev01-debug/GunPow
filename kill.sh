#!/bin/bash
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::                BẮT ĐẦU DỪNG ĐẠN ĐẠN ĐẢO 2                  :::"
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"

# Dừng các dịch vụ Game Server trước để lưu dữ liệu
echo "::             Dừng Dịch vụ World Server!                       ::"
cd /worldServer
./kill.sh
sleep 2

echo "::             Dừng Dịch vụ Phân phối dữ liệu!                  ::"
cd /dispatchServer
./kill.sh
sleep 2

echo "::             Dừng Dịch vụ Giao dịch game!                     ::"
cd /transactionServer
./kill.sh
sleep 2

echo "::             Dừng Dịch vụ Phòng thế giới!                     ::"
cd /roomServer
./kill.sh
sleep 2

echo "::             Dừng Dịch vụ Thông tin nhân vật!                 ::"
cd /playerServer
./kill.sh
sleep 2

echo "::             Dừng Dịch vụ Bạn bè liên server!                 ::"
cd /friendServer
./kill.sh
sleep 2

echo "::             Dừng Dịch vụ Chat thế giới!                      ::"
cd /chatServer
./kill.sh
sleep 2

echo "::             Dừng Dịch vụ chiến đấu!                          ::"
cd /battleServer
./kill.sh
sleep 2

echo "::             Dừng Dịch vụ quản lý chiến đấu!                  ::"
cd /battleManage
./kill.sh
sleep 2

echo "::             Dừng Giao diện đăng nhập kênh!                   ::"
cd /channelserver
./kill.sh
sleep 2

echo "::             Dừng Trình thông báo phân vùng!                  ::"
cd /ipdmain
./kill.sh
sleep 2

# Dừng hệ thống Database (Redis) sau cùng
echo ":::             Dừng cụm Redis Cluster Đạn Đạn Đảo 2           :::"
cd /redis/ipdredis
./kill.sh
sleep 2

cd /redis/gameredis
./kill.sh
sleep 2

echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::                ĐẠN ĐẠN ĐẢO 2 ĐÃ DỪNG HOÀN TẤT              :::"
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
