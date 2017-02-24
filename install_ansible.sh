#!/bin/bash

# ansible実行準備
sudo yum install -y epel-release
sudo yum install ansible -y --enablerepo=epel

# ansible実行
ansible-playbook ansible/webserver.yml -i 192.168.33.10
