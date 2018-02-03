#!/bin/bash
read -p 'From Phase 1, how many total bytes crashed: ' bytes
grep -rl 'vvvvvvvvvv' ./ |xargs sed -i "s/vvvvvvvvvv/$bytes/g"
python phase-02-*
