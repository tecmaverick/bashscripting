# create dir and switch to it
mkdir newdirname && cd $_
#****************************************

# List only directories
ls -d */
find . -type d

# List dirs with datetime stamp, size (human readable), hidden dirs
ls -lahd */

# List dirs by size in descending order, in human readable format
ls -ldSh */

# List dirs by size in ascending order
ls -ldSrh */

# List dirs by datetime in ascending order (recent dir on top)
ls -ldt */

# List dirs by datetime in descending order (recent dir at bottom)
ls -ldtr */

#****************************************

#Check dir exists - v1 DOT NOT USE TILDE, instead use $HOME
# ~ only expands in bash during tilde expansion, but anything that you quote, you disable the special meaning
dir_name="$HOME/Personal/Projects/bashscripting"

if [ -d $dir_name ]; then
  echo "$dir_name exists"
else
  echo "$dir_name NOT found"
fi

#Check file exists - v2 (Use tilde directly without enclosed in string)
if [ -d ~/Personal/Projects/bashscripting ]; then
  echo "~/Personal/Projects/bashscripting exists"
else
  echo "~/Personal/Projects/bashscripting NOT found"
fi

#Check file exists - v3
if [ -d 01_directory.sh ]; then
  echo "01_directory.sh exists"
fi

#Check file exists - v4
[ -d "/path/to/dir" ] && echo "Directory /path/to/dir exists."

#****************************************

