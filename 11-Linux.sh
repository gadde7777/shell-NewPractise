#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo " Please run with root user"
exit 1
fi

echo "iNSTALLING NGINX"

dnf install nginx -y