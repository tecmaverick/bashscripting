# List only files in a directory
ls -p | grep -v /
find . -maxdepth 1 -type f


# List all files in current and sub-dirs
find .
ls -R
tree

# List files and directories by Size descending (Large file at top)
ls -lSh #(l=list S=Size h=human readable size)

#List files and dirs by datetime descending (recent file top)
ls -lth

#List files and dirs by datetime ascending (recent file bottom)
ls -ltrh

#list all files recusrively within a specific dir
find /etc/* -type f

#list all files within a specific dir, and NOT in sub dirs
find /etc/* -type f -maxdepth 1

#List all files without error those cannot be accessed
#/dev/null is a blackhole and will be wiped out
#2 means standard error
#1 means standard output
ls -al 2> /dev/null

#This sends all valid messages to devnull and std errors to console
# This allows to view the errors with the command
ls -al 2> /dev/null

# same logic as above, where all valid output from the command will be
#sent to "/dev/null" and std errors will be send to screen
ls -al 1> /dev/null

#******************************************************************
#Check file exists - v1
file_name="01_directory.sh"

if [ -f $file_name ]; then
  echo "$file_name exists"
fi

#Check file exists - v2
if [ -f 01_directory.sh ]; then
  echo "01_directory.sh exists"
fi

#Check file exists - v3
if test -f 01_directory.sh; then
    echo "01_directory.sh exists."
fi

#Check file exists - v4
test -f /etc/resolv.conf && echo "$FILE exists."
Copy

#Check multiple file exists - v4
if [[ -f 01_directory && -f 02_file.sh ]]; then
    echo "Both files exist."
fi

#******************************************************************
# Iterating over files in a directory
for filename in ./*.sh; do
  echo $filename
done

#******************************************************************
#Truncate files to zero bytes if the file exists, if not a file will be created with zero bytes
> filename.ext

#Empty file. Write NULL to file
cat /dev/null >failed.txt

#Create an empty file and add some contents
test.txt <<<"abcdefgh"

#******************************************************************
#View count of open file descriptors
lsof | wc -l

#View list of open file descriptors
lsof -i -P

#******************************************************************
#read file contents and store in variable
#Option1:
data=$(<filename.txt)
echo "$data"

#Option2:
echo "$(<filename.txt)"

#******************************************************************

#Find and replace text inside files case insensitive search
# Mac
find . -type f -exec sed -i "" 's/TextToFind/TextToReplaceWith/gi' {} \;

#Linux
find . -type f -exec sed -i 's/TextToFind/TextToReplaceWith/gi' {} \;
