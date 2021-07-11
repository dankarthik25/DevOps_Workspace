#!/bin/bash


USER_NAME=$1
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
