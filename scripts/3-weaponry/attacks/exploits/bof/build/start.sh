#!/bin/bash
# Rapid Exploitation Creation Tool Menu by: Nick Lockard
echo "Rapid Exploitation Creation Tool"
PS3='Please enter your choice: '
options=("Target" "Target List" "Target Cleanup" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Target")
            echo "you chose choice 1"
	    read -p 'Target IP Address: ' dest_ip
	    read -p 'Target Port Number: ' dest_port
	    mkdir /root/scripts/3-weaponry/attacks/exploits/bof/live/$dest_ip:$dest_port
	    cd /root/scripts/3-weaponry/attacks/exploits/bof/template/
	    cp * /root/scripts/3-weaponry/attacks/exploits/bof/live/$dest_ip:$dest_port
	    cd /root/scripts/3-weaponry/attacks/exploits/bof/live/$dest_ip:$dest_port/
	    grep -rl '0.0.0.0' ./ |xargs sed -i "s/0.0.0.0/$dest_ip/g"
	    grep -rl '9999999999' ./ |xargs sed -i "s/9999999999/$dest_port/g"
	    ;;
        "Target List")
            echo "you chose choice 2"
	    ls /root/scripts/3-weaponry/attacks/exploits/bof/live/ > list
	    cat list
	    ;;
        "Target Cleanup")
            echo "you chose choice 3"
	    rm -rf /root/scripts/3-weaponry/attacks/exploits/bof/live/*
	    echo all Targets have been removed
	    ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
