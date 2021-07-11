#! /bin/bash


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
