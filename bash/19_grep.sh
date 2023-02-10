#caseinsensitive Search of instances text "Find" exact match, within current dir and sub dirs
grep -nri Find

#caseinsensitive Search of instances text starts with "Find" , within current dir and sub dirs
grep -nri "Find*"

#searches all files within the current directory for the text “framework” and output results with path and line number
grep -nr "framework" .

#search files for “kms” of type txt and json
#r - recursive, n - line number, w - for whole word
grep ~/Official/docs/ -e "kms" -rn --include=\*.{json,txt}

#exclude *.so file extension while searching file contents
grep ~/Official/docs/ -e "kms" -rn --exclude=*.so

#exclude json and txt file extension while searching file contents
grep ~/Official/docs/ -e "kms" -rn --exclude=\*.{json,txt}

# Find all executables
ls -F | grep '*$'

#Search for emails and output the entire line matching
grep -nri -E "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" --include=\*.txt

#Search for emails and output only the email address
grep -nrio -E "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b"  --include=\*.txt | cut -d \: -f 3
