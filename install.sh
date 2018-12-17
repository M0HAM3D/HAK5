#!bin/bash
green='\e[1;32m'
cyan='\e[1;36m'
red='\e[0;31m'
blue='\e[1;34m'
white='\e[1;37m'
yellow='\e[1;33m'
clear
figlet  -f big "           Install HAK5  "
echo ""
echo -e "$white[$red 1 $white] $blue KAIL $red&&$blue PaROot \n"
echo -e "$white[$red 2 $white] $blue TermuX \n"
echo -e $white
read -p "[ H_A_K_5 / Install ]~# " ins
if [ "$ins" = "2" ];then
	apt update && apt upgrade
	chmod 700 HAK5.sh
	pkg install python -y
	pkg install python2 -y
	pkg install python3 -y
	pkg install figlet -y
	pkg install wget -y
	pkg install toilet -y
	pkg install lolcat -y
	pkg install tor -y
	pkg install nmap -y
	apt install apache2 -y 
	pkg install curl -y
	apt install ruby -y
	apt install php -y 
	apt install cowsay -y 
	pip install --upgrade pip
	mv model .model
	cd .model
	chmod +x *
	mv .mohamed /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/
	cd .. 
	termux-setup-storage
	pip install urllib2
	mkdir /sdcard/HAK5
	echo -e -n "		Enter Any Kay TO Run HAK5    " ;read Enter
	bash HAK5.sh
elif [ "$ins" = "1" ]; then 
	mv model .model
	mkdir HAK5_PaYLOad
	chmod +x HAK5.sh
	chmod 700 HAK5.sh
	cd ~
	sudo apt-get install toilet -y
	sudo apt-get install wget -y
	sudo apt-get install figlet -y
	sudo apt-get install tor -y
	echo -e -n "		Enter Any Kay TO Run HAK5    " ;read Enter
	bash HAK5.sh
else :
	bash install.sh
fi




















