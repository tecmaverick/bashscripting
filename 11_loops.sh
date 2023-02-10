#While loop
counter=1
total_count=10
while [ $counter -le $total_count ]; do
  echo $counter
  counter=$((counter + 1))
  sleep 0.5

  if [ $(( $counter % 2 )) = 0 ]; then
    echo "even number detected $counter"
    continue
  fi


  if [ $counter -eq 9 ]; then
    break
  fi
done


#For loop - v1
for number in 10 20 30; do
  echo $number
done

#For loop - v1.1
for number in 10 20 30
do
  echo $number
done


#For loop - v2
for number in {10..20}; do
  echo $number
done

#For loop - v3 list all files
for filename in ./*.sh; do
  echo $filename
done