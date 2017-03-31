#!/bin/bash
# Rapid Exploitation Creation Tool Menu by: Nick Lockard
echo "Rapid Exploitation Creation Tool"
PS3='Please enter your choice: '
options=("Target" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Target")
            echo "you chose choice 1"
	    read -p 'Target IP Address: ' dest_ip
	    read -p 'Target Port Number: ' dest_port
	    mkdir /root/scripts/production/weaponry/live/$dest_ip:$dest_port
	    cd /root/scripts/production/weaponry/template/
	    cp * /root/scripts/production/weaponry/live/$dest_ip:$dest_port
	    cd /root/scripts/production/weaponry/live/$dest_ip:$dest_port/
	    grep -rl '0.0.0.0' ./ |xargs sed -i "s/0.0.0.0/$dest_ip/g"
	    grep -rl '9999999999' ./ |xargs sed -i "s/9999999999/$dest_port/g"
	    ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
