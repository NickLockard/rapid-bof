#!/bin/bash
# Rapid Exploitation Creation Tool Menu by: Nick Lockard
echo "Unique Pattern Generation"
read -p 'Byte Size: ' bytes
/usr/share/metasploit-framework/tools/exploit/pattern_create.rb -l $bytes > Unique-Pattern.txt
for upattern in $(cat Unique-Pattern.txt); do
grep -rl 'qqqqqqqqqq' ./ |xargs sed -i "s/qqqqqqqqqq/$upattern/g"
echo "Phase 4 weapons armed..." 
done


