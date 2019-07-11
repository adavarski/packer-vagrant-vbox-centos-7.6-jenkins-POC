#!/bin/bash

mkdir -p /var/lib/jenkins/.ssh
chmod 700 /var/lib/jenkins/.ssh
touch /var/lib/jenkins/.ssh/authorized_keys
chmod 600 /var/lib/jenkins/.ssh/authorized_keys

cat >> /var/lib/jenkins/.ssh/authorized_keys <<EOT
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCptdwhzjZXjqJOdquIG/Q619m1J1x1qglzR5Sdle9jrsAegMoS7j5623u7XmYbCtjYIqGNRIeiL08yltd0XbNaan1NfE7yMjkRCeN6kEMtGbI42j85/pWTxfMfpU4qjzh8QYVapQCdvfsu2eK4CppOKrxMjwD08GMeAyLBfH6XGc1HqGa9ha818Ti5zfw6tFVKNGbSwx7y3fQZJPqOIRLkE7+mb6Xf9utZKgiVEeiLe3sELhcl24SkT9lfWZ8jlbWTq6kblHVFCHqPFxZMfumcX7biwg/VGj2gVLR0UcoU2bZe8Kkz4nRYAZbyfuVeuvjaTfa1H2ccX6fKbgNVTchX jenkins@dl360-G7-2
EOT

chown -R jenkins /var/lib/jenkins/.ssh
