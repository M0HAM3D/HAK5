#!/bin/bash
#BY:MOHAMED_HCKER
green='\e[1;32m'
cyan='\e[1;36m'
red='\e[0;31m'
blue='\e[1;34m'
white='\e[1;37m'
yellow='\e[1;33m'

hs(){
	clear
	toilet -f mono12 -F gay "Hashing"
	echo ""
	printf "$green [$red 1 $green] $cyan Hashing\n"
	printf "$green [$red 2 $green] $cyan Type_Hashing\n"
	printf "$green [$red 3 $green] $cyan Find_Hashing\n"
	printf "$green [$red 0 $green] $cyan BaCk\n"
	echo -e $white
	read -p "[ H_A_K_5 / Hashing ]~# " go
	if [ $go = 1 ];then
		python2 .hashing.py
	elif [ $go = 2 ];then
		python3 .Type_Hashing.py
	elif [ $go = 3 ];then
		clear
		toilet -f mono12 -F gay "Hashing"
		printf "\n"
		printf "$white"
		read -p "Enter Type_Hashing :" Type
		read -p "Enter The Hash :" hash
		python2 .findmyhash.py $Type -h $hash
		echo -n -e $red"		Enter Any Kay To Exit"
		read Enter
		hs
	elif [ $go = 0 ]; then
		cd ..
		bash HAK5.sh
	else :
		hs
	fi

}
hs
