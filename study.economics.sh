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
-v /root/os/www/server/data/study_economics:/www/server/data/study_economics \
-v /root/os/www/wwwroot/study.economics:/www/wwwroot/study.economics \
-v /root/os/www/wwwroot/mysql.economics:/www/wwwroot/mysql.economics \
-v /root/os/www/backup:/www/backup \
-v /root/os/www/server/panel/backup/panelBackup/:/www/server/panel/backup/panelBackup/ \
1872220587/study:economics.




#docker exec -it bt /bin/bash   #使用
kubectl exec -it cloud-centso-study-0  /bin/bash
#yum install -y wget && wget -O install.sh http://download.bt.cn/install/install_6.0.sh && sh install.sh
#服务启动
/etc/init.d/bt start
/etc/init.d/nginx start
/etc/init.d/mysqld start
/etc/init.d/pure-ftpd start
/etc/init.d/php-fpm-56 start
/etc/init.d/php-fpm-73 start
/etc/init.d/redis restart

#日常维护
docker commit  -a "1872220587" -m "针对性学习" bt 1872220587/study:economics.  #提交
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

docker push  1872220587/study:economics.  #上传
docker pull  1872220587/study:economics  #下载


#删除所有未被容器使用的镜像:
docker image prune -a
#删除所有停止运行的容器:
docker container prune
#删除所有未被挂载的卷:
docker volume prune




















yum -y install --enablerepo=remi --enablerepo=remi-php56 php php-opcache php-pecl-apcu php-devel php-mbstring php-mcrypt php-mysqlnd php-phpunit-PHPUnit php-pecl-xdebug php-pecl-xhprof php-pdo php-pear php-fpm php-cli php-xml php-bcmath php-process php-gd php-common --skip-broken




lter user 'root'@'localhost' identified by '123456';



mysql -u root -p5-Y8z3w=txl8
alter user 'root'@'localhost' identified by '123456';

grant all privileges on *.* to 'root'@'%' identified by '123456' with grant option;









