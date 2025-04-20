#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "installation...FAILED"
        exit 1
    else
        echo "Installation...SUCCESS" 
    fi       
}



