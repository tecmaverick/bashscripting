#Test expressions
#v1
a=1
b=1
test $a -eq $b && echo "yes" || echo "no"

#v2
[ 5 -eq 6 ]; echo $?

#Expression Syntax
#( EXPRESSION )	EXPRESSION is true
#! EXPRESSION	EXPRESSION is false
#EXPRESSION1 -a EXPRESSION2	both EXPRESSION1 and EXPRESSION2 are true
#EXPRESSION1 -o EXPRESSION2	either EXPRESSION1 or EXPRESSION2 is true
#-n STRING	the length of STRING is nonzero
#STRING	equivalent to -n STRING
#-z STRING	the length of STRING is zero
#STRING1 = STRING2	the strings are equal
#STRING1 != STRING2	the strings are not equal
#INTEGER1 -eq INTEGER2	INTEGER1 is equal to INTEGER2
#INTEGER1 -ge INTEGER2	INTEGER1 is greater than or equal to INTEGER2
#INTEGER1 -gt INTEGER2	INTEGER1 is greater than INTEGER2
#INTEGER1 -le INTEGER2	INTEGER1 is less than or equal to INTEGER2
#INTEGER1 -lt INTEGER2	INTEGER1 is less than INTEGER2
#INTEGER1 -ne INTEGER2	INTEGER1 is not equal to INTEGER2
#FILE1 -ef FILE2	FILE1 and FILE2 have the same device and inode numbers
#FILE1 -nt FILE2	FILE1 is newer (modification date) than FILE2
#FILE1 -ot FILE2	FILE1 is older than FILE2
#-b FILE	FILE exists and is block special
#-c FILE	FILE exists and is character special
#-d FILE	FILE exists and is a directory
#-e FILE	FILE exists
#-f FILE	FILE exists and is a regular file
#-g FILE	FILE exists and is set-group-ID
#-G FILE	FILE exists and is owned by the effective group ID
#-h FILE	FILE exists and is a symbolic link (same as -L)
#-k FILE	FILE exists and has its sticky bit set
#-L FILE	FILE exists and is a symbolic link (same as -h)
#-O FILE	FILE exists and is owned by the effective user ID
#-p FILE	FILE exists and is a named pipe
#-r FILE	FILE exists and read permission is granted
#-s FILE	FILE exists and has a size greater than zero
#-S FILE	FILE exists and is a socket
#-t FD	file descriptor FD is opened on a terminal
#-u FILE	FILE exists and its set-user-ID bit is set
#-w FILE	FILE exists and write permission is granted
#-x FILE	FILE exists and execute (or search) permission is granted