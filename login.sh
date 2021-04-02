#!/usr/bin/expect -f

# https://srvfail.com/how-to-provide-ssh-password-inside-a-script-or-oneliner/

spawn ssh #username
expect "password:"
send "\r" # password
interact
