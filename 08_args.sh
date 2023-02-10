#outputs the number of positional parameters of your script.
# Example: ./myscript.sh param1 param2
# Outputs: 2
echo "Arg count: $# \n"
if [ $# -ge 1 ]; then
  echo "first arg: $1"
fi

if [ $# -ge 2 ]; then
  echo "Second arg: $2 \n"
fi

# Print all args in descending
#total_args=$#
#while [ "$#"  -ne 0 ]; do
#    printf 'Arg: %d of %d .\n Value: "%s".\n\n' "$#" "$total_args" "$1"
#    shift
#done

# Print all args in ascending
total_args=$#
arg_counter=0
args=("$@")

while [ $arg_counter -lt $total_args ]; do
#    echo $arg_counter
    printf 'Arg: %d of %d .\n Value: "%s".\n\n' "$arg_counter" "$total_args" "${args[${arg_counter}]}"
    arg_counter=$(( $arg_counter + 1))
done
