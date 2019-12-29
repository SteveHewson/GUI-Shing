#!/bin/bash

host_1="Host"
count_1="Count"
>$host_1
>$count_1

dialog \
--title "SHING" \
--backtitle "Welcome to SHING" \
--inputbox "Which IP Address would you like to ping?" \
8 45 2>$host_1
response=$?
host=$(<$host_1)

dialog \
--title "SHING" \
--backtitle "Welcome to SHING" \
--inputbox "How many times would you like to ping?" \
8 45 2>$count_1
response=$?
count=$(<$count_1)

ping $host -c $count > qbtumwxbvjhwqVFusijfitObpJiYcc.txt

min=$(cat qbtumwxbvjhwqVFusijfitObpJiYcc.txt | sed 's/.*[Pp][Ii][Nn][Gg].*//' | sed 's/.*PING.*//' | sed 's/.*bytes.*//' | sed 's/.*packet.*//' | sed 's/.* = //' | sed 's/'$'\/.*//' | sed '/^\s*$/d')
avg=$(cat qbtumwxbvjhwqVFusijfitObpJiYcc.txt | sed 's/.*[Pp][Ii][Nn][Gg].*//' | sed 's/.*PING.*//' | sed 's/.*bytes.*//' | sed 's/.*packet.*//' | sed 's/.* = //' | sed 's/.*'1$'\///' | sed 's/'$'\/.*/ ms/' | sed '/^\s*$/d')
max=$(cat qbtumwxbvjhwqVFusijfitObpJiYcc.txt | sed 's/.*[Pp][Ii][Nn][Gg].*//' | sed 's/.*PING.*//' | sed 's/.*bytes.*//' | sed 's/.*packet.*//' | sed 's/.* = //' | sed 's/.*'2$'\///' | sed 's/'$'\/.*/ ms/' | sed '/^\s*$/d')
std_dev=$(cat qbtumwxbvjhwqVFusijfitObpJiYcc.txt | sed 's/.*[Pp][Ii][Nn][Gg].*//' | sed 's/.*PING.*//' | sed 's/.*bytes.*//' | sed 's/.*packet.*//' | sed 's/.* = //' | sed 's/.*'$'\///' | sed 's/'$'\/.*/ ms/' | sed '/^\s*$/d')

dialog \
--title "SHING" \
--backtitle "Welcome to SHING" \
--clear \
--msgbox "Minimum: ${min} ms\nAverage: ${avg} \nMaximum: ${max} \nStd_Dev: ${std_dev}" 8 45

rm qbtumwxbvjhwqVFusijfitObpJiYcc.txt

clear