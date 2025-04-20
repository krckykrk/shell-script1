#!/bin/bash

USERID=$(id -u)

#this function should validate the previous command and inform user it is success or failure
VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "installation...FAILED"
        exit 1
    else
        echo "Installation...SUCCESS" 
    fi       
}

if [ $USERID -ne 0 ]
then 
    echo "ERROR::  please run the script with root access"
    exit 1
fi

yum install postfix -y

VALIDATE $?

yum install maven -y

VALIDATE $?



