<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2020/9/23
 * Time: 15:04
 */


echo "6666666666666";



Hadoop到底是干什么用的，主要的应用场景和应用领域是什么，主要解决的核心问题又是什么，我们个人可以用它来干什么  产生价值呢


# 只在 master 节点执行
# 替换 x.x.x.x 为 master 节点实际 IP（请使用内网 IP）
# export 命令只在当前 shell 会话中有效，开启新的 shell 窗口后，如果要继续安装过程，请重新执行此处的 export 命令
export MASTER_IP=172.18.225.254
# 替换 apiserver.demo 为 您想要的 dnsName
export APISERVER_NAME=apiserver.demo
# Kubernetes 容器组所在的网段，该网段安装完成后，由 kubernetes 创建，事先并不存在于您的物理网络中
export POD_SUBNET=10.100.0.1/16
echo "${MASTER_IP}    ${APISERVER_NAME}" >> /etc/hosts
curl -sSL https://kuboard.cn/install-script/v1.19.x/init_master.sh | sh -s 1.19.2


# 只在 worker 节点执行
# 替换 x.x.x.x 为 master 节点的内网 IP
export MASTER_IP=172.18.225.254
# 替换 apiserver.demo 为初始化 master 节点时所使用的 APISERVER_NAME
export APISERVER_NAME=apiserver.demo
echo "${MASTER_IP}    ${APISERVER_NAME}" >> /etc/hosts

# 替换为 master 节点上 kubeadm token create 命令的输出
kubeadm join apiserver.demo:6443 --token 8hsnz9.5llvhq6abr8q7l8o     --discovery-token-ca-cert-hash sha256:a81bf2aabcba2fa9e7f7603283b18aea14c6729a63070bffa8febff58adf896a

