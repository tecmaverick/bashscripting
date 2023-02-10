#Version 1 - "THEN" on separate line
a=100
if [ $a -eq 100 ]
then
  echo "a is 100"
elif [ $a -ne 100]
then
  echo "a is NOT equal to 100"
else
  echo "a is NOT 100"
fi

#Version 1 - "THEN" on same line
a=100
if [ $a -eq 100 ]; then
  echo "a is 100"
elif [ $a -ne 100]; then
  echo "a is NOT equal to 100"
else
  echo "a is NOT 100"
fi

#NOT operation
a=200
if [ ! $a -eq 100 ]; then
  echo "a is NOT 100"
fi

# ************************************************************
# Conditional Operators
# ************************************************************

#Integer comparison

#-eq
#is equal to
#if [ "$a" -eq "$b" ]
#
#-ne
#is not equal to
#if [ "$a" -ne "$b" ]
#
#-gt
#is greater than
#if [ "$a" -gt "$b" ]
#
#-ge
#is greater than or equal to
#if [ "$a" -ge "$b" ]
#
#-lt
#is less than
#if [ "$a" -lt "$b" ]
#
#-le
#is less than or equal to
#if [ "$a" -le "$b" ]
#
#<
#is less than (within double parentheses)
#(("$a" < "$b"))
#
#<=
#is less than or equal to (within double parentheses)
#(("$a" <= "$b"))
#
#>
#is greater than (within double parentheses)
#(("$a" > "$b"))
#
#>=
#is greater than or equal to (within double parentheses)
#(("$a" >= "$b"))
#

#************************************************************
#String comparison
#=
#is equal to
#
#if [ "$a" = "$b" ]
#Caution-Note the whitespace framing the =.
#if [ "$a"="$b" ] is not equivalent to the above.
#
#==
#is equal to
#if [ "$a" == "$b" ]
#This is a synonym for =.
#
#Note
#The == comparison operator behaves differently within a double-brackets test than within single brackets.
#[[ $a == z* ]]   # True if $a starts with an "z" (pattern matching).
#[[ $a == "z*" ]] # True if $a is equal to z* (literal matching).
#
#[ $a == z* ]     # File globbing and word splitting take place.
#[ "$a" == "z*" ] # True if $a is equal to z* (literal matching).

#!=
#is not equal to
#if [ "$a" != "$b" ]
#
#This operator uses pattern matching within a [[ ... ]] construct.
#<
#is less than, in ASCII alphabetical order
#if [[ "$a" < "$b" ]]
#if [ "$a" \< "$b" ]
#
#Note that the "<" needs to be escaped within a [ ] construct.
#>
#is greater than, in ASCII alphabetical order
#if [[ "$a" > "$b" ]]
#if [ "$a" \> "$b" ]
#
#Note that the ">" needs to be escaped within a [ ] construct.




#-z
#string is null, that is, has zero length
# String=''   # Zero-length ("null") string variable.
#
#if [ -z "$String" ]
#then
#  echo "\$String is null."
#else
#  echo "\$String is NOT null."
#fi     # $String is null.
#
#-n
#string is not null.
#
