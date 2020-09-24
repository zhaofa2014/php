一、修改IP地址
vi /etc/sysconfig/network-scripts/ifcfg-ens33

二、修改网关
vi /etc/sysconfig/network

DNS：
vi /etc/resolv.conf
echo "nameserver 114.114.114.114" >>/etc/resolv.con


修改网卡
vi /etc/sysconfig/network-scripts/ifcfg-ens33

systemctl restart network    #重启网卡

ping www.baidu.com


#####################使用—>制作镜像->停止容器—>删除容器->上传镜像->运行镜像容器->  每天进步一点点
docker run \
--name bt \
--privileged=true \
--restart always \
-itd \
-p 21:21 \
-p 222:22 \
-p 80:80 \
-p 443:443 \
-p 888:888 \
-p 3306:3306 \
-p 8888:8888 \
-v /root/www:/www \
centos:7.8.2003
docker exec -it bt /bin/bash   #使用
yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh

--privileged=true \
--restart always \
-v /root/www:/www \
bt 1
#服务启动
/etc/init.d/bt start
/etc/init.d/nginx start
/etc/init.d/mysqld start
/etc/init.d/pure-ftpd start
/etc/init.d/php-fpm-56 start
/etc/init.d/php-fpm-73 start
/etc/init.d/redis restart

#日常维护
docker commit  -a "1872220587" -m "针对性学习" bt 1872220587/study:mysql  #提交
docker restart bt #重启
docker stop bt  #停止
docker rm bt    #删除
docker rm -f 3013eb725f5b  #强制删除
rm -rf /var/lib/docker #删除镜像/容器等
chmod 777 -R /var/lib/docker/overlay2/85546a1efe483b276a4bfa7e9c573550567b55d8b9071ea9961d4093904603a8/ #给一个目录及其子目录所有文件添加权限
docker push 1872220587/study:mysql   #上传
docker pull 1872220587/study:mysql   #下载




#删除所有未被容器使用的镜像:
docker image prune -a

#删除所有停止运行的容器:
docker container prune

#删除所有未被挂载的卷:
docker volume prune