#!/bin/bash

if ["$1" == ""]
then
echo "./ipsweep.sh <ip>"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi

#Use "./ipsweep.sh <ip> > iplist.txt
#And use ips with nmap in for loop
#for ip in $(cat iplist.txt); do nmap -sS -p 80 -T4 $ip & done


