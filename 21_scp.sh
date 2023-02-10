#copy files recursively from EC2 to Local
scp -r -i /Keys/KeyPair.pem ec2-user@ec2-11-62.ap-se-2.compute.amazonaws.com:/home/ec2-user/nodetraining/* .

#command will copy local files within "source-files" to the remote location "destination-files"
scp /source-files user@hostname:/destination-files

#the following will login to a remote ssh box and copy files to the local destination
scp user@hostname:/source-files /destination-files

