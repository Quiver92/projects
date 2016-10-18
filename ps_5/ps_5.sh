#!/bin/bash
HOSTNAME=$(sudo cat /etc/hostname)
PS=$(ps -aeo %mem,comm | sort -hrk 1 | head -n 1 | awk '{print $2,$1}')
MEM=$(ps -aeo %mem --no-headers | sort -rh | head -n 1 | gawk -F. '{ print $1 }')
if [ ${MEM} -gt  10 ]
    then
	echo "Имя точки:"$HOSTNAME
        echo "Нагружает память:"$PS
sendemail   -o tls=yes -f "quiver92@gmail.com" -t "quiver92@mail.ru" -u "Test " -m "$PS" -s smtp.gmail.com:587  -xu "quiver92@gmail.com"
fi


