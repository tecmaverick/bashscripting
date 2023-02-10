#Basic arithemetic ops
echo $((1 + 1))
echo $((1 * 1)) #Doesnt require operator to be escaped
echo $(((11 * 12)/2))

#Basic arithemtic with vars
a=10
b=20
c=$((a + b))
echo $c

#Basic arithemtic with expr (ensure there is space between the operator and operands)
expr 1 + 1

#Complex expression needs to be quoted
expr '(' 7 + 3 ')' '*' 14

#The reson * is quoted, is bash evalutes it as wildcard, instead of multiplication
expr 2 '*' 22
expr 2 \* 22

#Integer Division, doesn't return decimals
expr 22 / 3