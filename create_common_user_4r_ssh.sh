#!/bin/bash

USER_NAME=$1
# USER_NAME= "ansible"
PASSWORD=$USER_NAME
useradd ${USER_NAME}
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
passwd -e ${USER_NAME}

if [[ "${?}" -ne 0 ]]   # # if [ "#?" !=0]
then
  echo "Password create sucessfull"
else
      exit 1
fi


USER_NAME=$1
echo '$1'
echo '$USER_NAME'
if grep -q "${USER_NAME}" "/etc/sudoers"    #[[ "${?}" -ne 0 ]]
then
  echo "Alread exiting "
else
  echo "Need to add to sudoers"
  echo -e "## Allow ${USER_NAME} to run any commands anywhere\n${USER_NAME}\tALL=(ALL)\tNOPASSWD: ALL" >> /etc/sudoers
  # sed -i 's/root    ALL=(ALL)       ALL/root    ALL=(ALL)       ALL \n${USER_NAME}\tALL=(ALL)/g' /etc/sudoers
fi
grep "$USER_NAME" "/etc/sudoers"

passwrdAuthentication_yes(){
sed -i 's/^PasswordAuthentication no/#PasswordAuthentication no/' /etc/ssh/sshd_config
sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
grep 'PasswordAuthentication' /etc/ssh/sshd_config
}


sudo su -
cd /home/opt
# USER_NAME= $1
USER_NAME= 'ansible'
createuser 'ansible'
grandpremission 'ansible'
passwrdAuthentication_yes

service sshd restart
