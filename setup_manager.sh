#!/bin/bash

echo "==========================================="
echo "Menu to Setup"
echo "==========================================="
echo "Enter 1 to setup teamviewer"
echo "Enter 2 to setup skype"
echo "Enter q to exit"
echo -e "\n"
echo -e "Enter your selection:"
read answer
case "$answer" in
1) sudo rm -rf /mnt/teamviewer* && sudo apt-get install -f && sudo apt-get -y install libxtst6:i386 libxrandr2:i386 && sudo apt-get update && sudo apt-get install -f && cd /mnt/ && sudo wget https://download.teamviewer.com/download/teamviewer_i386.deb && cd /mnt && sudo dpkg -i /mnt/teamviewer* && sudo rm -rf /mnt/teamviever* ;;
2) sudo apt-get install -f && sudo apt-get install sni-qt:i386 libdbusmenu-qt2:i386 libqt4-dbus:i386 libxss1:i386 && sudo apt-get update && sudo apt-get install libgtk2.0-0:i386 gtk2-engines:i386 libgconf-2-4:i386 && sudo apt-get install -f && sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner" && sudo apt-get update && sudo apt-get install skype ;;
q) exit ;;
esac
##Установка Chameleon
#sudo chmod 777 /etc/apt/sources.list  && echo "deb http://repos.chmsoft.com.ua/ xenial-evolution-2.5 non-free">>/etc/apt/sources.list && sudo apt-key adv --recv-keys --keyserver keys.gnupg.net 1FB50E9B838F7C88 && sudo apt-get install -y chameleon-client && sudo apt-get install chameleon-client-database && sudo apt-get install chameleon-spring && sudo apt-get install chameleon-gui-plugin-all



