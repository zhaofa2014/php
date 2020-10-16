#修改网卡
vi /etc/sysconfig/network-scripts/ifcfg-ens33
systemctl restart network    #重启网卡
ping www.baidu.com


#VMware设置centos7共享文件夹
输入命令vmware-hgfsclient查看共享目录是否已经设置成功
vmware-hgfsclient
mkdir -p /root/os
echo ".host:/os /root/os                        fuse.vmhgfs-fuse allow_other,defaults 0 0" >>/etc/fstab
mount -a
#卸载共享目录cd  /mnt/project
umount /root/os

#usb
rm -rf /root/os/*
docker cp bt:/www /root/os/
/www/server/mysql
/www/server/data


kubectl cp -c  cloud-centso-study www:/root/os/
kubectl cp -c  cloud-centso-study www/server/data/mysql:www:/root/zz

#VM VirtualBox设置centos7共享文件夹


#####################使用—>制作镜像->停止容器—>删除容器->上传镜像->运行镜像容器->  每天进步一点点
docker run \
--name bt \
--privileged=true \
--restart always \
--net=host \
-itd \
#-p 21:21 \
#-p 222:22 \
#-p 80:80 \
#-p 443:443 \
#-p 888:888 \
#-p 3306:3306 \
#-p 8888:8888 \
#-p 6379:6379 \
-v /root/www/wwwroot/:www/wwwroot/ \

1872220587/study:economics
#centos:7.8.2003 \
#1872220587/study:economics.v1 \

#USB
docker run \
--name bt \
--privileged=true \
-itd \
--restart always \
--net=host \
-v /root/os/www/wwwroot:/www/wwwroot \
-v /root/os/www/wwwroot/study.economics:/www/wwwroot/study.economics \
-v /root/os/www/wwwroot/mysql.economics:/www/wwwroot/mysql.economics \
-v /root/os/www/backup:/www/backup \
-v /root/os/www/server/panel/backup/panelBackup/:/www/server/panel/backup/panelBackup/ \
1872220587/study:economics..




docker exec -it bt /bin/bash   #使用
#kubectl exec -it cloud-centso-study-0  /bin/bash
#yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh
#服务启动
/etc/init.d/bt start
/etc/init.d/nginx start
/etc/init.d/mysqld start
/etc/init.d/pure-ftpd start
/etc/init.d/php-fpm-56 start
/etc/init.d/php-fpm-73 start
/etc/init.d/redis restart
/usr/bin/btpython restart

#日常维护
docker commit  -a "1872220587" -m "针对性学习" bt 1872220587/study:economics..  #提交
docker commit  -a "1872220587" -m "针对性学习" bt 1872220587/study:economics..  money
docker restart bt #重启
docker stop bt  #停止
docker rm bt    #删除
docker rm -f  bt #强制删除

#删除锁定文件
chattr -i .user.ini        #解除锁定
chmod -R 777 .user.ini #赋777权限
rm -rf .user.ini          #删除文件

chattr -i btwaf.conf       #解除锁定
chmod -R 777 btwaf.conf #赋777权限
rm -rf btwaf.conf    #删除文件

docker push  1872220587/study:money  #上传
docker pull  1872220587/study:economics  #下载


#删除所有未被容器使用的镜像:
docker image prune -a
#删除所有停止运行的容器:
docker container prune
#删除所有未被挂载的卷:
docker volume prune








QQ群：540457466
钉钉群：30711101
dockerhub：https://hub.docker.com/u/1872220587
github：https://github.com/zhaofa2014?tab=repositories
gitee：https://gitee.com/zhaofafa/projects
工作微信：18887142223
生活微信：13114274876
学习微信：18213520223
工作 QQ：1872220587
生活 QQ：1844480921
游戏 QQ：1655592531
facebook：18887142223
twitter：Zhaofa142857
line：zhaofa2014@hotmail.com
百家号：https://baijiahao.baidu.com/u?app_id=1670732549254864
头条号：https://www.toutiao.com/c/user/103768153980/#mid=1670731303068686
微信公众号：https://mp.weixin.qq.com/s/_5QxA7ySiCNAyzofRdgHTQ
企鹅号：https://media.om.qq.com/author?id=MZEXcM1irPYu7uTJilL6bXvQ0
爱奇艺号：https://www.iqiyi.com/u/2000622273/feeds
微博：https://weibo.com/5504212058/profile?topnav=1&amp;wvr=6&amp;is_all=1
哔哩哔哩：https://space.bilibili.com/433162955/
快手：https://live.kuaishou.com/profile/zhaofa2014
抖音：https://v.douyin.com/JjvY66V/
优酷：https://i.youku.com/i/UMTc5ODYzNTkwNA==?spm=a2hbt.13141534.1_1.d_2_2
腾讯视频：http://v.qq.com/s/videoplus/299369362
知乎：https://www.zhihu.com/people/zhao-yi-79-22﻿
淘宝：
天猫：
京东：



