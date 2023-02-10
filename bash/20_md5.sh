#Check MD5 of a directory file names NOT file contents

find . | sort | md5  #On Mac
find . | sort | md5sum #On Redhat Linux

#Check MD5 of a file contents in the current directory
find . -type f -exec md5sum {} \; | sort -k 2 | md5sum #redhat
find . -type f -exec md5 {} \; | sort -k 2 | md5 #mac

