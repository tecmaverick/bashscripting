echo "choose a number from the following options"
echo "1 Travel"
echo "2 Accomodation"
echo "3 Food"
echo "4 Finance"
read option_selected

case $option_selected in
  1) echo "Confirm you selected travel";;
  2) echo "Confirm you selected Accomodation";;
  3) echo "Confirm you selected Food";;
  4) echo "Confirm you selected Finance";;
  *) echo "None of the above";;
esac