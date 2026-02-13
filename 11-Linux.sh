#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo " Please run with root user"
exit 1
fi

echo "iNSTALLING NGINX"
dnf install nginx -y

if [? -ne 0]; then
echo " Installing Nginx : Failure "
exit 1
else
echo "Installing Nginx IS sUCCESS"
fi