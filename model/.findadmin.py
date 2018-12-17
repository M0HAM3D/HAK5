#!/usr/bin/env python
# -*- coding: UTF-8 -*-
#BY:Abn-Alhacker
#by:MOhamed_hacker
ed='\033[1;31m'
green='\033[1;32m'
orange='\033[1;33m'
blue='\033[1;34m'
gray='\033[1;37m'
gl = '\033[1;32m'
import os 
from urllib2 import Request, urlopen, URLError, HTTPError

def Space(j):
	i = 0
	while i<=j:
		print " ",
		i+=1


def findAdmin():
	f = open(".link.txt","r");
	os.system('clear')
	print "Enter the site link ex (www.exmpel.com)\n"
	link = raw_input("[*] Enter the site link : ")
	print blue + "\n\n[!] please wait ... \n"
	while True:
		sub_link = f.readline()
		if not sub_link:
			break
		req_link = "http://"+link+"/"+sub_link
		req = Request(req_link)
		try:
			response = urlopen(req)
		except HTTPError as e:
			continue
		except URLError as e:
			continue
		else:
			print "[✔] Found : ",req_link
def Credit():
	os.system ('clear')
	os.system ('toilet -f mono12 -F gay F-Admin')
	print ''
	print (gl+'[1] FindAdmin\n')
	print (blue+'[0] Back')
	print (gray)
	md = raw_input('[ H_A_K_5 / F-Admin ]~# ')
	if md == "1" :
		findAdmin()
	elif md == "0":
		os.system('cd ..')
		os.system('bash HAK5.sh')
	else:
		Credit()

Credit()

