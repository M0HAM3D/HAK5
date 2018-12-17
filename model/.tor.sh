## Tor-Buddy by AfterBurn @ NetSecNow
##
## http://learnnetsec.blogspot.com
##
##


## Check if tor is installed

echo -e "Checking if Tor is installed...\n"
TOR="/etc/init.d/tor"


if [ -f $TOR ];
then
echo -e "Tor is Installed!\n"
echo -e "Starting Tor :-)\n"
service tor start
else
echo -e "Tor is not installed! apt-get update and then apt-get install tor\n"
exit 
fi


## Check if proxychains are installed
echo -e "Checking if Proxychains is installed...\n"
PC="/etc/proxychains.conf"


if [ -f $PC ];
then
echo -e "Proxychains is Installed!\n"
else
echo -e "Proxychains is not installed! apt-get update and then apt-get install proxychains\n"
exit
fi


## Set timeout to restart ToR to change IP in Seconds.

echo -e "Please enter how many seconds you want to grab a new IP: \c"

read TIME

if [ "$TIME" -lt "30" ];
then
echo -e "WARN: Less than 30 seconds is not suggested due to timeout errors!\n"
echo -e "We will do it anyway. If you have issues, restart script\n"
else
echo -e "Setting up timer, standby...\n"
fi

function control_c {
echo -en "\nGoodbye - Happy Hacking!\n"
service tor stop
echo -en "Tor has been stopped. You are no longer proxied!\n"
exit $?
}

## Capture SIGINT (Ctrl-C) and exit the script clean.
trap control_c SIGINT


for (( ; ; ))
do 
sleep $TIME
service tor restart
echo -e "$TIME Seconds until next IP Change \n"
done


