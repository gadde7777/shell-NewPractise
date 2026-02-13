

#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo " Please run with root user"

fi

Validate()
{

if [ $1 -ne 0 ];then

echo "$2 : Install failure"
exit 1
else
echo "$2 : Install Success"
fi

}

dnf install nginx -y
Validate $? "Nginx Installation"


dnf install mysql -y
Validate $? "Mysql Installation"


dnf install nodejs -y
Validate $? "Nodejs Install"

