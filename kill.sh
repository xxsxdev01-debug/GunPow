#!/bin/bash
#!/bin/bash
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::                     弹弹岛2开始停止!                        :::"
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::                     弹弹岛2Redis集群停止                   :::"
cd /ddd/redis/gameredis
./kill.sh
sleep 2
cd /ddd/redis/ipdredis
./kill.sh
sleep 2
echo "::                      服务分区公告器停止!                     ::"
cd /ddd/ipdmain
./kill.sh
sleep 2
echo "::                      渠道登陆接口停止!                       ::"
cd /ddd/channelserver
./kill.sh
sleep 2
echo "::                      战斗管理服务停止!                       ::"
cd /ddd/battleManage
./kill.sh
sleep 2
echo "::                      战斗服务停止成功！                      ::"
cd /ddd/battleServer
./kill.sh
sleep 2
echo "::                      世界聊天服务停止!                       ::"
cd /ddd/chatServer
./kill.sh
sleep 2
echo "::                      跨服好友服务停止!                       ::"
cd /ddd/friendServer
./kill.sh
sleep 2
echo "::                      角色信息服务停止!                       ::"
cd /ddd/playerServer
./kill.sh
sleep 2
echo "::                      世界房间服务停止!                       ::"
cd /ddd/roomServer
./kill.sh
sleep 2
echo "::                      游戏交易服务停止!                       ::"
cd /ddd/transactionServer
./kill.sh
sleep 2
echo "::                      数据分发服务停止!                       ::"
cd /ddd/dispatchServer
./kill.sh
sleep 2
echo "::                      游戏世界服务停止!                       ::"
cd /ddd/worldServer
./kill.sh
sleep 2
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::                     弹弹岛2停止完成!                        :::"
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"