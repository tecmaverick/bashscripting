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
