#!/bin/bash
#-Project Galilei : Enables High End Monitoring Solutions for Linux Servers & Openstack Cloud
#-Bash to install Netdata in CentOS/Redhat Linux-#

# Add EPEL
cat <<EOM >/etc/yum.repos.d/epel-bootstrap.repo
[epel]
name=Bootstrap EPEL
mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=epel-\$releasever&arch=\$basearch
failovermethod=priority
enabled=0
gpgcheck=0
EOM
yum --enablerepo=epel -y install epel-release
rm -f /etc/yum.repos.d/epel-bootstrap.repo

# Install prerequisites
yum install -y autoconf automake curl gcc git libmnl-devel libuuid-devel lm_sensors make MySQL-python nc pkgconfig python python-psycopg2 PyYAML

# Do the installation
# download it - the directory 'netdata' will be created
#git clone https://github.com/seamless-distribution-systems/galilei.git --depth=1
cd netdata
echo "Working from `pwd`"
`pwd`/netdata-installer.sh
echo "Bye!!!"
