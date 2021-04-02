#!/usr/bin/expect -f

# https://srvfail.com/how-to-provide-ssh-password-inside-a-script-or-oneliner/

spawn ssh csstudent075@csicluster.ucd.ie 
expect "password:"
send "6qbX5W9DDS\r"
interact
