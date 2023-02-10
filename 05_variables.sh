#Simple variable substitution
a="Alpha"
b="Beta"
echo "$a $b"

# Exec command and get the result to a variable
files=$(ls)
echo $files

# Exec command and output the results to stdout
echo $(ls)
