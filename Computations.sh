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

## Flip Coin Simulation ##

#!/bin/bash -x

headCounter=0
tailCoumter=0
while [ 1 -eq 1 ]
do
        randomGenerator=$((RANDOM%2))
        if [ $randomGenerator -eq 0 ]
        then
                #echo "Heads"
                ((headCounter++))
                if [[ $headCounter -eq 10 ]]
                then
                        echo "Head came" $headCounter "Times"
                        #exit
                        break;
                fi
        else
                #echo "Tails"
                ((tailCounter++))
                if [[ $tailCounter -eq 10 ]]
                then
                        echo "Tail came" $tailCounter "Times"
                        #exit
                        break;
                fi
        fi
done
echo "Tail "$tailCounter
echo "Head "$headCounter


## End of Flip Coin Simulation ##