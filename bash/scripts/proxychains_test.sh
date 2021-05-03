#!/usr/bin/bash

# tput colors
# Num  Colour    #define         R G B

# 0    black     COLOR_BLACK     0,0,0
# 1    red       COLOR_RED       1,0,0
# 2    green     COLOR_GREEN     0,1,0
# 3    yellow    COLOR_YELLOW    1,1,0
# 4    blue      COLOR_BLUE      0,0,1
# 5    magenta   COLOR_MAGENTA   1,0,1
# 6    cyan      COLOR_CYAN      0,1,1
# 7    white     COLOR_WHITE     1,1,1

RED=`tput setaf 1`
GREEN=`tput setaf 2`
YELLOW=`tput setaf 3`
RESET=`tput sgr0`
PROXYIP=$(proxychains -q curl -s ifconfig.me/ip)
CURRENTIP=$(curl -s ifconfig.me/ip)

if [[ "${PROXYIP}" =~ "${CURRENTIP}" || -z "${PROXYIP}" ]]; 
then
    echo "${RED}Proxychains is not working!"
    echo "${YELLOW}If you intent to use proxychains with TOR check if it's running."
    echo "  systemctl status tor"
    echo "If not, start TOR."
    echo "  systemctl start tor"
else
    echo "${GREEN}Proxychains is working!"
fi

echo "${RESET}Current ip $CURRENTIP"
echo "${RESET}Proxy ip: $PROXYIP"