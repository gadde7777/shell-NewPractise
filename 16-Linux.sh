#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
echo "Please run with root user access"
exit 1
fi

mkdir -p $LOGS_FOLDER

Validate()
{
  if [ $1 -ne 0]; then
  echo " $2.... Failure"| tee -a $LOGS_FILE
  exit 1
  else
  echo "$2 .. Success" | tee -a $LOGS_FILE
  fi
}

for package in $@
do

dnf install $package -y
Validate $? "$package Installation"

done

# dnf install nginx -y &>> $LOGS_FILE
# Validate $? "Nginx Installation"


# dnf install mysql -y &>> $LOGS_FILE
# Validate $? "Mysql Installation"


# dnf install nodejs -y &>> $LOGS_FILE
# Validate $? "Nodejs Install"