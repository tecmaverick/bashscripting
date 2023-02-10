#Add\Removes entries in cron file

#execute script at specific times
at 20:00 -f <pathToScript>

#execute script at 8 PM 31 Dec 2023
at 20:00 01312023 -f <pathToScript>


#View all scheduled jobs
atq

#remove job
atrm <jobid>

#****************************************
#Edit crontab file (crontab.guru)
crontab -e

#Run schedule job with a sepcifc user
sudo crontab -u username -e