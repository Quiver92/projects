#!/bin/bash
DISTROS=$(whiptail --title "Тестируем чеклист" --checklist \
"Выберите предпочитаемый дистрибутив Линукс" 15 60 4 \
"debian" "Почтенный Debian" ON \
"ubuntu" "Популярная Ubuntu" OFF \
"centos" "Стабильная CentOS" ON \
"mint" "Восходящая звезда Mint" OFF 3>&1 1>&2 2>&3)
exitstatus=$?
if [ $exitstatus = 0 ]; then
echo "Ваш любимый дистрибутив:" $DISTROS
else
echo "Вы выбрали отмену."
fi
