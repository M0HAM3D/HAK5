 #!/usr/bin/python
'''coded by MOHAMED HACHER'''

#Script Encryption Hash
#Programming and development
#MOHAMED HAKER
#Script in case of development
#--------------------------
import os
import time
#-------------------
red='\033[1;31m'
green='\033[1;32m'
orange='\033[1;33m'
blue='\033[1;34m'
gray='\033[1;37m'
#---------------------
def type_hash():
	os.system('clear')
	os.system ('toilet -f mono12 -F gay T-hash')
	print (blue+"			By : MOHAMED_HACKER")
	print (gray +"			Enter (X) TO EXIT" )
	medo =  str(input(gray+'Enter the Hash: '+red))
	if len(medo) == 32 :
		print ("\n")
		print (blue+'Type Hash'+orange+' ==================>'+red+' {'+green+'MD4'+red+' or'+green+' MD5'+red+'}')
		time.sleep (5)
		type_hash()
	elif len(medo) == 64 :
		print("\n")
		print (blue+'Type Hash'+orange+' ==================>'+red+' {'+green+'SHA256'+red+'}')
		time.sleep (5)
		type_hash()
	elif len(medo) == 128 :
		print("\n")
		print (blue+'Type Hash'+orange+' ==================>'+red+' {'+green+'SHA512'+red+' or'+green+' Whirlpool'+red+'}')
		time.sleep (5)
		type_hash()
	elif len(medo) == 56 :
		print("\n")
		print (blue+'Type Hash'+orange+' ==================>'+red+' {'+green+'SHA224'+red+'}')
		time.sleep (5)
		type_hash()
	elif len(medo) == 40 :
		print("\n")
		print (blue+'Type Hash'+orange+' ==================>'+red+' {'+green+'SHA1'+red+' or'+green+' DSA'+red+' or' +green+' RIPEMD160'+red+'}')
		time.sleep (5)
		type_hash()
	elif medo == "X" or medo == "x" :
		os.system ('bash .hashing.sh')
	else:
		print(red+'Type Hash does not exist in My List')
		o=str(input(green+'             Enter any kay'))
		type_hash()
type_hash()