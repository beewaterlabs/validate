#!/bin/bash

#Verification, phase 1:

## Use this to add a new line after an output: ---> [| pr -Td] ##

echo Vendor ID & Model name: | pr -Td

lscpu | grep "Model name" | pr -Td

#BIOS release date -- repalce aboveBIOS cmd []

dmidecode -t bios | grep "Release Date:" | pr -Td

dmidecode | grep "SMBIOS\|BIOS Revision\|System BIOS Version" | pr -Td

echo List drives: | pr -Td

lsblk | grep "disk\|/boot" | pr -Td

echo Show E810 NIC interface names: | pr -Td

lshw -c net -short | grep E810-C | pr -Td

#Find a way to select E810 *name and run -> ethtool -i *en

#ethtool -i node | grep "firmware-version\|driver" | pr -Td

#List NFS shares

echo List  NFS shares: | pr -Td

df -h  | pr -Td

#Show BMC IP

echo BMC address: | pr -Td

ipmitool lan print 1 | grep "IP Address" | pr -Td

#Show IPv4 hostname:

echo Show IPv4 hostname: | pr -Td

hostname -i | pr -Td

#Show OS version:

echo OS Version: | pr -Td

cat /etc/os-release | grep "PRETTY_NAME"  | pr -Td

#Show CPU:

lscpu | grep "Model name"

#Show disk data:

fdisk -l

#idsid + nfs verificartion:

df -h | grep "/nfs/site/home" | pr -test

#SowBigFix (BESClient)

ps aux | grep "BESClient" | pr -Td

#verify which NIS server is being used, this is correct: sync with C.B.

ypwhich | pr -Td



++++++Update these++++++++ []

###

dmidecode | grep "Configured Memory Speed: 5600 MT/s" | grep -c 5600

DIMM sn:

dmidecode | grep "Serial Number: 4"
dmidecode | grep -c "Serial Number: 4"

###





