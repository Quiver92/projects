#!/bin/bash

tput clear
tput setaf 3
echo "Chameleon Soft"
tput sgr0

#Title
(tput cup 5 17 ; tput bold ; echo "====================================")
(tput cup 6 27 ; tput bold ; echo "Menu to Setup")
(tput cup 7 17 ; tput bold ; echo "====================================")
#Choices
(tput cup 9 5 ; tput setaf 4 ; echo "Enter 1 to setup teamviewer")
(tput cup 10 5 ; tput setaf 4 ; echo "Enter 2 to setup skype" )
(tput cup 12 5 ; tput setaf 5 ; echo "Enter q to exit"; tput cup 13 5 ; echo -e "\n" ; tput cup 14 5 ; echo -e "Enter your selection:")

read answer

tput clear
tput sgr0

case "$answer" in
#Setup teamviewer
1) sudo rm -rf /mnt/teamviewer* && sudo apt-get install -f && sudo apt-get -y install libxtst6:i386 libxrandr2:i386 && sudo apt-get update && sudo apt-get install -f && cd /mnt/ && sudo wget https://download.teamviewer.com/download/teamviewer_i386.deb && cd /mnt && sudo dpkg -i /mnt/teamviewer* && sudo rm -rf /mnt/teamviever* ;;

#Setup skype
2) sudo apt-get install -f && sudo apt-get install sni-qt:i386 libdbusmenu-qt2:i386 libqt4-dbus:i386 libxss1:i386 && sudo apt-get update && sudo apt-get install libgtk2.0-0:i386 gtk2-engines:i386 libgconf-2-4:i386 && sudo apt-get install -f && sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner" && sudo apt-get update && sudo apt-get install skype ;;
q) exit ;;
esac
##Установка Chameleon
#sudo chmod 775 /etc/apt/sources.list  && sudo echo "deb http://repos.chmsoft.com.ua/ xenial-evolution-2.5 non-free">>/etc/apt/sources.list && sudo apt-key adv --recv-keys --keyserver keys.gnupg.net 1FB50E9B838F7C88 && sudo apt-get install -y chameleon-client chameleon-client-database chameleon-spring install chameleon-gui-plugin-all



