#list all process
#a option outputs all running processes of all users in the system.
#u option provides additional information like memory and CPU usage percentage
#x option lists all processes not executed from the terminal.
ps aux


#discover resource-hungry processes.  sort the list by CPU usage
top

#Kill Process
pgrep <processName>| xargs kill -9

#Kills all process with the name postgres
sudo pkill -u postgres

# Change the process priority to the lowest -20 lowest and 20 is the highest. 0 is the default priority for all process
renice 20 -p $(pgrep "ProcessName")

# List all open files (Disk and Network) by a specific process
lsof | awk '{ if ($1=="ProcessName") { print}}'