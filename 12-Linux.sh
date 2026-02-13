#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo " Please run with root user"

fi

echo "Installing Nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
echo " Installing Nginx : Failure "
exit 1
else
echo "Installing Nginx IS success"
fi

echo "Installing Mysql"
dnf install mysql -y

if [ $? -ne 0 ]; then
echo " Installing mysql is Failure"
exit 1
else
echo "Installing mysql is success"
fi

echo "Installing nodejs
dnf install nodejs -y

if [ $? -ne 0 ]; then
echo " Installing nodejs is Failure"
exit 1
else
echo "Installing node js is siccess"
fi