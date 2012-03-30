#!/bin/bash -

interface="en0"

if [ ! -z $1 ]
then
    interface="$1"
fi

sudo route add -net 192.168.1.0/24 -interface $interface 
sudo route add -net 192.168.201.0/24 -interface $interface 

echo "please set vpn dns: add 192.168.1.100";
