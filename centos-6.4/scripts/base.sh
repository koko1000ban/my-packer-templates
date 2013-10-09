# base install

sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers

yum -y install gcc make gcc-c++ automake autoconf kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel httpd-devel apr-devel apr-util-devel
yum -y install curl curl-devel bind-utils file git mailx man ntp openssh-clients patch rsync screen sysstat dstat htop traceroute vim-enhanced
yum -y install perl wget ruby ruby-devel rubygems kernel-devel kernel-headers