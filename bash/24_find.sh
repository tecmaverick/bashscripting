#find <paths> <filters> <actions>
#Search for casesensitive filename "Document" in current and subfolders
find . -name Document -type f
find . -iname Document -type f #case insensitive
find . -iname "Document*" -type f #wildcard use double quotes to enclose

#Search for filename "Document" only in current directory
find . -name Document -type f -maxdepth 1
find . -iname Document -type f -maxdepth 1

# Failures are not posted to std out (terminal)
find . -name Document -type f 2>/dev/null

#************************************************
#Search file by extension
find . -name "*.txt" -type f

#************************************************
#Search by file size
# b    for 512-byte blocks (this is the default if no suffix  is used)
# c    for bytes
# w    for two-byte words
# k    for Kilobytes       (units of 1024 bytes)
# M    for Megabytes    (units of 1048576 bytes)
# G    for Gigabytes (units of 1073741824 bytes)

#Note: ensure to add +1 and -1 to handle rounding off errors
# Meaning, 69.001 gets rounded up to 70 and thus gets excluded!
#A perfect example is find . -size -1M which will only match files of size zero

#file size > 1 MB
find . -name "*.txt" -type f -size +1M

#file size > 20 bytes
find . -name "*.txt" -type f -size +120c

#file size < 1 MB
find . -name "*.txt" -type f -size -1M

#file size between 1MB and 2MB
find . -name "*.txt" -type f -size +1M -size -2M

#************************************************

#Search for dir "fonts" in current and subfolders
find . -name fonts -type d

#************************************************
#Execute command
find . -name fonts -type d -exec echo 'Sometext''{}' +

#************************************************
#Find files modified between two dates
find . -newermt "2013-01-01 00:00:00" ! -newermt "2013-01-02 00:00:00"

#Find files that was created or status changed in the last 60 minutes
find . -name "*log*" -type f  -cmin -60 -exec ls -lh {} + 2>/dev/null

#Find files that was modified in the last 60 minutes
find . -name "*log*" -type f  -mmin -60 -exec ls -lh {} + 2>/dev/null

#Find files that was accessed in the last 60 minutes
find . -name "*log*" -type f  -amin -60 -exec ls -lh {} + 2>/dev/null

#************************************************
#Find files by permissions

#Get files with execute permissions set for user
find . -type f -perm -u=x -perm -g=x -perm -o=x -maxdepth 1

#Get files with execute permissions set for users
find . -type f -perm -u=x -and -perm -g=x -and -perm -o=x -maxdepth 1

