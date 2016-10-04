#!/bin/bash
#include <stdio.h>
# Выведем шапку
printf "%-15s%-20s%-17s%-29s%-25s\n" "Client" "Hostname" "VPN Address" "Connected Since" "Real Address"

# Разделитель по умолчанию для while read
IFS=";"

# Получим записи
grep CLIENT_LIST /etc/openvpn/status.log | grep -v HEADER | awk -F , '{if ($2 ~ /'$1'/)print $2";"$4";"$7";"$3}' | awk -F - {'print $1";"$2'} | sort --field-separator=";" -k1,1 -k2n | while read var1 var2 var3 var4 var5; do
	host=$var1-$var2
	printf "%-15s%-20s%-17s%-29s%-25s\n" $var1 $host $var3 $var4 $var5
done
