#returns the exit code of the last immediate command
#0 means success, bigger than 0 means failure
echo $?

#Valida exit cdode of prev command
lls
if [ $? -eq 0 ]; then
  echo "last command successful"
else
  echo "last command failed. Exit code $?"
fi

#Forece with exit code
exit 1