#!/bin/bash

# 升级并且安装常用软件
apt update
apt upgrade -y
apt install -y git zsh curl wget lrzsz zip unzip vim htop net-tools tree docker-compose

# 安装oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# 部署ssh key
mkdir -p /root/.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDd/YW2KJ9s3sxuP9TnuaIwkHVLMGvQSytg7QOjlemBSk+tK6DPW4PVQSYm8xKmAl7Hu9NEDv9AbfL3qHaKNby8Fel9uiprs0/3gHN4tyU6w+miULenl3pFt+0dvjFHdImLifzcY/zd27Y4KBJKgMcfEQSaLIE5iMLwNvA3u8o+cH6X6Faj02w5HgusoWDbe4Lw0lZ3ic2nr36JctS028caDkeds17Krh06UB70838ZAZx5BCHHD8dXKtB2kYYjvQg/LuVIIHa/GsBBAFGS0p5Jcc4iX3qX4v7VESu6Ac3P6Ii/PYw62Q8ZI7yFJdrJs5E2ELohyCrkVqn9q9Dg8xzJ maniac@maniacdeMacBook-Pro.local" > /root/.ssh/authorized_keys

# 创建data目录
mkdir -p /data
