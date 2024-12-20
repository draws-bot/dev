#!/bin/bash

userid=$(id -u)

VLAIDATE(){
    if [ $1 -ne 0 ]
    then
    echo "$2 is ....failure"
    exit 1
    else
    echo "$2 is .... success"
fi


}


if [ $userid -ne 0 ]
then
    echo "you are not in superuser"
    exit 1 #manually exit if error occurs
else
    echo "print you are  in superuser"
fi         

dnf install mysql -y

VALIDATE $?  "INSTALLING MYSQL"

dnf install git -y

VALIDATE $?  "INSTALLING GIT"
