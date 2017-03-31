#!/bin/bash
# Rapid Exploitation Creation Tool Menu by: Nick Lockard
echo "Rapid Exploitation Creation Tool"
PS3='Please enter your choice: '
options=("Unique Pattern Generation" "Pattern Offset Location" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Unique Pattern Generation")
            echo "you chose choice 1"
	    read -p 'Byte Size: ' bytes
	    /usr/share/metasploit-framework/tools/exploit/pattern_create.rb -l $bytes
            ;;
        "Pattern Offset Location")
            echo "you chose choice 1"
	    read -p 'Byte Size: ' bytes
	    read -p 'EIP Register Overwritten Hex Byte Value: ' bytes2
	    /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l $bytes -q $bytes2
            echo "This is the total number of A's to lead with in order to reach EIP"
	    ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
