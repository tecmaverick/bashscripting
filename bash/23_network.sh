#List all network connection
lsof -i

#List all open IPv4 connections
lsof -i 4

#List all open IPv6 connections
lsof -i 6

#List process running on specific port
lsof -i TCP:22

#List all TCP connections
lsof -i TCP

#List all UDP connections
lsof -i UDP

#List all open ports from 0-1024
lsof -i TCP:1-1024

#List all files and network connection opened by processname
lsof -i | awk '{ if ($1=="ProcessName") { print}}'

#====================================
#Test if port 80 is used by specific pricess. This listens for command on Port 80
nc -l 80

# Connect to port 80 from the same machine
nc localhost 80
#====================================
