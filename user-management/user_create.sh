#!/bin/bash 
#script should be execute with sudo/root acccess.
if [[ "${UID}" -ne 0 ]]
then 
	echo 'please run with sudo or root.'
	exit 1
fi

# user should provide atleast one argument as username else guide him 

if [[ "${#}" -lt 1 ]]

then 
	echo "usage: ${0} USER_NAME [COMMENT]..."
	echo 'create a user with name USER_NAME and comments field of COMMENT'
	exit 1 
fi

# store 1st argument as user name 
USER_NAME="${1}"


# in case of more than one argument, store it is an account comments
#
shift 
COMMENT="${@}"

#create a password.

PASSWORD=$(date +%s%N)


#create the user 
useradd -c "$COMMENT" -m $USER_NAME

# check if user is succesfully created or not 
if [[ $? -ne 0 ]]
then 
	echo 'The Account could not be created'
	exit 1 
fi 

# set the PASSWORD for the user.
echo "${USER_NAME}:${PASSWORD}" | chpasswd

# check if PASSWORD is successfully set or not 
if [[ $? -ne 0 ]]
then 
	echo 'Password could not be set'
	exit 1
fi 

# force passsword change on first login.
passwd -e $USER_NAME 

# display the username,password,and the host where the user is created .

echo 
echo "username: $USER_NAME"
echo "password: $PASSWORD"
echo 
echo $(hostname)

