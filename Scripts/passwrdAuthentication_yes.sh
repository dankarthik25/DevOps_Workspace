#! /bin/bash

sed -i 's/^PasswordAuthentication no/#PasswordAuthentication no/' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
grep 'PasswordAuthentication' /etc/ssh/sshd_config
service sshd restart
