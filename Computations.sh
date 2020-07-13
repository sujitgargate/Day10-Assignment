## Welcome message ##

echo welcome to Assignment 10-11

## End of welcome message ##

## Arithmatic Operations ##

#!/bin/bash -x
read -p "Enter value: " a
read -p "Enter value: " b
read -p "Enter value: " c

declare -A dictonary

op1=$(( $a+$b*$c ))
op2=$(( $a*$b+$c ))
op3=$(( $c+$a/$b ))
op4=$(( $a%$b+$c ))

for((i=1;i<=4;i++))
do
	dictonary[(($i))]=$(("op"$i))
done

echo "Dictonary : " ${dictonary[@]}

for((i=1;i<=4;i++))
do
	Array[(($i))]=${dictonary[(($i))]}
done

echo "Array in reverse sorted order" ${Array[@]}
sorted=$(printf '%s\n' "${Array[@]}" | sort )
echo "Array in sorted order "$sorted

## End Of Arithmatic Operations ##