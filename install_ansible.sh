#!/bin/bash

# ansible実行準備
sudo yum install -y epel-release
sudo yum install ansible -y --enablerepo=epel

# ansible実行
ansible-playbook -i ansible/localhost ansible/localhost.yml
