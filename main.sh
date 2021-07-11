#! /bin/bash

cd /home/ec2-user

USER_NAME='ansible'
sh /home/ec2-user/create_user.sh $USER_NAME
echo ">>> Grand Permission"
sh /home/ec2-user/grandpremission_user.sh $USER_NAME
echo ">>> Password Authentication"
sh /home/ec2-user/passwrdAuthentication_yes.sh
