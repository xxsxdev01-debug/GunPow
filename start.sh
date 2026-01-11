#!/bin/bash
#!/bin/bash
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::                     弹弹岛2开始启动                        :::"
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::                     弹弹岛2Redis集群启动                   :::"
cd /ddd/redis/gameredis
./run.sh
sleep 2
cd /ddd/redis/ipdredis
./run.sh
sleep 2
echo "::                      服务分区公告器启动!                     ::"
cd /ddd/ipdmain
./run.sh
sleep 2
echo "::                      渠道登陆接口启动!                       ::"
cd /ddd/channelserver
./run.sh
sleep 2
echo "::                      战斗管理服务启动!                       ::"
cd /ddd/battleManage
./run.sh
sleep 2
echo "::                      战斗服务启动成功！                      ::"
cd /ddd/battleServer
./run.sh
sleep 2
echo "::                      世界聊天服务启动!                       ::"
cd /ddd/chatServer
./run.sh
sleep 2
echo "::                      跨服好友服务启动!                       ::"
cd /ddd/friendServer
./run.sh
sleep 2
echo "::                      角色信息服务启动!                       ::"
cd /ddd/playerServer
./run.sh
sleep 2
echo "::                      世界房间服务启动!                       ::"
cd /ddd/roomServer
./run.sh
sleep 2
echo "::                      游戏交易服务启动!                       ::"
cd /ddd/transactionServer
./run.sh
sleep 2
echo "::                      数据分发服务启动!                       ::"
cd /ddd/dispatchServer
./run.sh
sleep 2
echo "::                      游戏世界服务启动!                       ::"
cd /ddd/worldServer
./run.sh
sleep 2
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo ":::                     弹弹岛2启动完成                        :::"
echo "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"