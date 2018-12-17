#!usr/bash
#by:MOHAMED HAKER
green='\e[1;32m'
cyan='\e[1;36m'
red='\e[0;31m'
blue='\e[1;34m'
white='\e[1;37m'
yellow='\e[1;33m'
ms(){
	clear
	printf """$red

			▄▄▄  ▄▄▄ 	   ▄▄▄▄   	 ▄▄▄▄▄▄▄▄ 
			███  ███ 	 ▄█▀▀▀▀█  	 ██▀▀▀▀▀▀ 
			████████ 	 ██▄      	 ██       
			██ ██ ██ 	  ▀████▄  	 ███████  
			██ ▀▀ ██ 	      ▀██ 	 ██       
			██    ██ 	 █▄▄▄▄▄█▀ 	 ██       
			▀▀    ▀▀ 	  ▀▀▀▀▀    	 ▀▀   """
	printf "\n\n\n"
	printf "$green[$red 1 $green] $yellow Down msfconsole $red($white Termux $red)\n" 
	printf "$green[$red 2 $green] $yellow Down msfconsole $red($white gun ROoT $red)\n"
	printf "$green[$red 3 $green] $yellow update MSF $red($white KAiL $red)\n"
	printf "$green[$red 0 $green] $yellow Back\n"
	printf "$white"
	read -p "[ H_A_K_5 / metasploit ]~# " msf
	if [ $msf = 1 ];then
	   	clear
		figlet Metasploit
		printf "$red download msfconsole"
		cd ~
		apt update && apt upgrade -y
		pkg install git -y
		pkg install python2 -y
		pkg install python3 -y
		pkg install python -y
		pkg install ruby -y
		pkg install wget -y
		pkg install unzip -y
		pkg install zip -y
		pkg install nano -y
		pkg install perl -y
		pkg install curl -y
		pkg install proot -y
		wget https://Auxilus.github.io/metasploit.sh
		bash metasploit.sh
		cd metasploit-framework
		gem install bundle
		gem install bundler
		pip2 install bundler
		bundle config build.nokogiri --use-system-libraries
		bundle install
		bundle update nokogiri
		gem install nokogiri
		gem install nokogiri -- --use-system-libraries
		gem install pkg-config -v "~> 1.1"
		pip2 install nokogiri
		pkg-config
		bundle update nokogiri
		pg_ctl -D $PREFIX/var/lib/postgresql start
		clear
		echo
		echo -e $yellow "Run --} msfconsole {-- In Termux "
		sleep 5
		clear 
		cd HAK5
		bash HAK5.sh
	elif [ $msf = 2 ]; then
	   	clear
		figlet Metasploit
		printf "$red download msfconsole"
		cd ~
		apt update && apt upgrade -y
		apt install git
		apt install python2
		apt install python3
		apt install python
		apt install ruby
		apt install wget
		apt install unzip
		apt install zip
		apt install nano
		apt install perl
		apt install curl
		apt install proot
		apt install python-pip
		apt install wget
		apy install gem
		apt-get install python-pip
		wget https://Auxilus.github.io/metasploit.sh
		bash metasploit.sh
		cd metasploit-framework
		gem install bundle
		gem install bundler
		pip2 install bundler
		bundle config build.nokogiri --use-system-libraries
		bundle install
		bundle update nokogiri
		gem install nokogiri
		gem install nokogiri -- --use-system-libraries
		gem install pkg-config -v "~> 1.1"
		pkg-config
		bundle update nokogiri
		pg_ctl -D $PREFIX/var/lib/postgresql start
		clear
		echo
		echo -e $yellow "Run --} msfconsole {-- In gunroot "
		sleep 5
		clear
		cd HAK5
		bash HAK5.sh
	elif [ $msf = 3 ]; then
	   	apt update
		apt install metasploit-framework
		apt-get update msfconsole
		apt-get upgrade msfconsole
		cd ..
		bash HAK5
	elif [ $msf = 0 ]; then
		cd ..
	 	bash HAK5.sh
	else :
		ms
	fi
}
ms
