#! /bin/bash
# 
#    TO Copy Scripts to remote users
#
#scp -i "apple01.pem" -r Scripts ec2-user@ec2-18-188-62-35.us-east-2.compute.amazonaws.com:/opt
#scp -i key.pem -r Scripts ec2-user@IPAddressOfEC2:/opt

#
#    Before runing scripts run following scripts
#
#sudo su -
#cd /opt/Scripts
#chmod -R 777 /opt

path=/opt/Scripts
USER_NAME='ansible'
sh $path/create_user.sh $USER_NAME
echo ">>> Grand Permission"
sh $path/grandpremission_user.sh $USER_NAME
echo ">>> Password Authentication"
sh $path/passwrdAuthentication_yes.sh
