echo "============BEGIN==============">>log.txt >>error.txt

log_exit_code() {
  if [ $? -eq 0 ]; then
    echo "Success $?">>error.txt
  else
    echo "Fail $?">>error.txt
  fi
}
echo TZ=GMT echo `date +"%Y-%m-%d %H:%M:%S"` #DateTime in UTC

release_file=/etc/os-release

if grep -q "Arch" $release_file; then
  echo "Arch type running pacman update">>log.txt >>error.txt
  sudo pacman -Syu 1>>log.txt 2>>error.txt
  log_exit_code
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file; then
  echo "Ubuntu type running apt update"
  sudo apt update  1>>log.txt 2>>error.txt
  sudo apt dist-upgrade  1>>log.txt 2>>error.txt
  log_exit_code

fi

echo TZ=GMT echo `date +"%Y-%m-%d %H:%M:%S"` #DateTime in UTC
echo "============END==============">>log.txt >>error.txt