#!/bin/bash

USERID=$(id -u)

R='\e[31m'
G='\e[32m'
Y='\e[33m'
B='\e[34m'
N='\e[0m'

LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
echo -e " $R Run with root access $N "
exit 1
fi

mkdir -p $LOGS_FOLDER

Validate()
{
  if [ $1 -ne 0 ]; then
  echo -e "$2..$R FAIL $N | tee -a $LOGS_FILE
  exit 1
  else
  echo -e '$2..$G SUCC | tee -a $LOGS_FILE
  fi
}

for package in $@
do
    dnf list installed $package &>>$LOGS_FILE
    if [ $? -ne 0 ]; then
    echo "$package not installed, Installing now"
    dnf install $package -y &>> $LOGS_FILE
    Validate $? "$package Installation"

else
    echo "$package aleady installed. Skipping now"
fi
done

# dnf install nginx -y &>> $LOGS_FILE
# Validate $? "Nginx Installation"


# dnf install mysql -y &>> $LOGS_FILE
# Validate $? "Mysql Installation"


# dnf install nodejs -y &>> $LOGS_FILE
# Validate $? "Nodejs Install"