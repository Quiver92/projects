#!/bin/bash
declare -a NUM 
echo "Введите имя клиента, например: kiset"
read NAME
echo "Введите номер точки, например: 5041"
read NUM 
for I in ${NUM}
do
	IPADDR=$(bash /home/chameleon/vpnclient.sh | grep "\b${NAME}-${I}\b" | awk '{print $3}')
	echo "Ищем точку: $NAME - $NUM ..."
	sleep 0.2
	if [ -n "${IPADDR}" ];
		then 
			echo "Точка найдена, IP -> $IPADDR"
			sleep 0.2
			echo "Подключаемся..."
			sleep 0.2
			#echo -e "\e[31mДля выхода из логов необходимо нажать Ctrl+C\e[0m" 
			#echo "Введите пароль !!!"	
			echo 'Chamele0n' | ssh -C chameleon@${IPADDR} "tail --follow /var/log/chameleon/fiscallistener.log" 
		else echo -e "\e[31mТочка ${I} не на связи\e[0m"
	fi
done
sleep 0.2
echo "Отключаемся !!!"
sleep 2
