#return the number of lines within the file
cat filename | wc -l

#return the word count, line count, character count, and byte count
cat filename | wc

#return the number of words within the file
cat filename | wc -w

#Redirect command input from a file
wc - l < filename.ext