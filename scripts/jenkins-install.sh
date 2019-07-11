#!/bin/bash
mkdir source
cd source
git clone https://github.com/AtScaleInc/docker
 /docker/image-builder/utils/network-setup.sh --configure
 yum install java-1.8.0-openjdk-devel -y
 systemctl enable docker
 useradd -s /bin/bash -m -d /var/lib/jenkins jenkins
 usermod -a -G docker jenkins
 cat >> /etc/sudoers <<EOT
jenkins ALL=(ALL)       NOPASSWD: ALL
EOT
