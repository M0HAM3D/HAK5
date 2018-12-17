 #!/usr/bin/python
'''coded by MOHAMED HACHER'''

#Script Encryption Hash
#Programming and development
#MOHAMED HAKER
#Script in case of development

import hashlib
import os
#------------------
red='\033[1;31m'
green='\033[1;32m'
orange='\033[1;33m'
blue='\033[1;34m'
gray='\033[1;37m'
gl = '\033[1;32m'
#-------------
def rasma():
	os.system('clear')
	os.system ('toilet -f mono12 -F gay hashing')
	print (green+"			By : MOHAMED_HACKER")
def main ():
	rasma()
	print (red)
	print '   [ 1 ]  ==>   MD5      \n   '
	print '   [ 2 ]  ==>   SHA1     \n   '
	print '   [ 3 ]  ==>   SHA-256  \n   '
	print '   [ 4 ]  ==>   SHA-512   \n  '
	print '   [ 5 ]  ==>   SHA-224     \n'
	print '   [ 6 ]  ==>   SHA-384     \n '
	print '   [ X ]  ==>   EXIT      \n  '  
	option = raw_input( gl+'[ H_A_K_5 / HASHING ] ~#  '+red )
	if option == "1" :
		md5()
	elif option == "2" :
		sha1()
	elif option == "3" :
		sha256()
	elif option == "4":
		sha512()
	elif option == "5":
		sha224()
	elif option == "6" :
		sha384()
	elif option == "X" or option == "x" or option == "exit":
		os.system ('bash .hashing.sh')

	else :
		main()

def md5():
	os.system('clear')
	os.system('figlet MD5')
	m5 = raw_input(red+'ENTER THE WORD NOW :'+blue) #md5
	a = hashlib.md5 (m5) .hexdigest ()
	print (a)
	agen = raw_input(red+'DO you Want Againg (y/n): '+orange)
	if agen == "Y" or agen == "y" or agen == "YES" or agen == "yes":
		md5()
	if agen == "n" or agen == "N" or agen == "NO" or agen == "no" :
		main()
def sha1():
	os.system('clear')
	os.system('figlet SHA-1')
	s1 = raw_input(red+'ENTER THE WORD NOW :'+blue) #md5
	b = hashlib.sha1 (s1) .hexdigest ()
	print (b)
	agen = raw_input(red+'DO you Want Againg (y/n): '+orange)
	if agen == "Y" or agen == "y" or agen == "YES" or agen == "yes":
		sha1()
	if agen == "n" or agen == "N" or agen == "NO" or agen == "no" :
		main()
def sha256():
	os.system('clear')
	os.system('figlet SHA-256')
	s256 = raw_input(red+'ENTER THE WORD NOW :'+blue) #md5
	X = hashlib.sha256 (s256) .hexdigest ()
	print (X)
	agen = raw_input(red+'DO you Want Againg (y/n): '+orange)
	if agen == "Y" or agen == "y" or agen == "YES" or agen == "yes":
		sha1()
	if agen == "n" or agen == "N" or agen == "NO" or agen == "no" :
		main()
def sha512():
	os.system('clear')
	os.system('figlet SHA-512')
	s512 = raw_input(red+'ENTER THE WORD NOW :'+blue) #md5
	z = hashlib.sha512 (s512) .hexdigest ()
	print (z)
	agen = raw_input(red+'DO you Want Againg (y/n): '+orange)
	if agen == "Y" or agen == "y" or agen == "YES" or agen == "yes":
		sha512()
	if agen == "n" or agen == "N" or agen == "NO" or agen == "no" :
		main()
def sha224():
	os.system('clear')
	os.system('figlet SHA-224')
	s224 = raw_input(red+'ENTER THE WORD NOW :'+blue) #md5
	m = hashlib.sha224 (s224) .hexdigest ()
	print (m)
	agen = raw_input(red+'DO you Want Againg (y/n): '+orange)
	if agen == "Y" or agen == "y" or agen == "YES" or agen == "yes":
		sha512()
	if agen == "n" or agen == "N" or agen == "NO" or agen == "no" :
		main()
def sha384():
	os.system('clear')
	os.system('figlet SHA-384')
	s384 = raw_input(red+'ENTER THE WORD NOW :'+blue) #md5
	q = hashlib.sha384 (s384) .hexdigest ()
	print (q)
	agen = raw_input(red+'DO you Want Againg (y/n): '+orange)
	if agen == "Y" or agen == "y" or agen == "YES" or agen == "yes":
		sha384()
	if agen == "n" or agen == "N" or agen == "NO" or agen == "no" :
		main()
main()