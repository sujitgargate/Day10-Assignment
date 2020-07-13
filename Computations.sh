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

## Flip Coin Combination ##

#!/bin/bash -x
randomGenerator=$((RANDOM%2))
if [ $randomGenerator -eq 0 ]
then
        echo "Heads"
else
        echo "Tails"
fi

## End of Flip Coin Combination ##

## This is Singlet Combination flipcoin ##

#!/bin/bash -x
declare -A flipCoin
H=1
T=1
counter=0

while [ $counter -le 150 ]
do
        randomGenerator=$((RANDOM%2))
        if [ $randomGenerator -eq 0 ]
        then
                flipCoin["Heads"]=$(($H))
                ((H++))
                ((counter++))
        else
                flipCoin["Tails"]=$(($T))
                ((T++))
                ((counter++))
        fi
done

## This is end of Singlet Combination flipcoin ##

## This is Doublet Combination flipcoin ##

#!/bin/bash -x
declare -A flipCoin
counter=0

while [ $counter -le 150 ]
do
        randomGenerator=$((RANDOM%4))
        if [ $randomGenerator -eq 0 ]
        then
                flipCoin["HH"]=$(($HH))
                ((HH++))
                ((counter++))
        elif [ $randomGenerator -eq 1 ]
        then
                flipCoin["HT"]=$(($HT))
                ((HT++))
                ((counter++))

        elif [ $randomGenerator -eq 2 ]
        then
                flipCoin["TH"]=$(($TH))
                ((TH++))
                ((counter++))

        else
                flipCoin["TT"]=$(($TT))
                ((TT++))
                ((counter++))
        fi
done
HH=${flipCoin["HH"]}
HT=${flipCoin["HT"]}
TH=${flipCoin["TH"]}
TT=${flipCoin["TT"]}
printf "%s" " HH is "  "$(($HH*100/150))% "
printf "%s" " HT is "  "$(($HT*100/150))% "
printf "%s" " TH is "  "$(($TH*100/150))% "
printf "%s" " TT is "  "$(($TT*100/150))% "

sorted=$(printf ${flipCoin[@]} | sort | tail -1)
echo $sorted


## This is end of Doublet Combination flipcoin ##

## This is Tripplet Combination flipcoin ##

#!/bin/bash -x
declare -A flipCoin
headCounter=1
tailCounter=1
counter=0

while [ $counter -le 150 ]
do
        randomGenerator=$((RANDOM%8))
        if [ $randomGenerator -eq 0 ]
        then
                flipCoin["HHH"]=$(($HHH))
                ((HHH++))
                ((counter++))
        elif [ $randomGenerator -eq 1 ]
        then
                flipCoin["HHT"]=$(($HHT))
                ((HHT++))
                ((counter++))

        elif [ $randomGenerator -eq 2 ]
        then
                flipCoin["HTH"]=$(($HTH))
                ((HTH++))
                ((counter++))
        elif [ $randomGenerator -eq 3 ]
        then
                flipCoin["HTT"]=$(($HTT))
                ((HTT++))
                ((counter++))
        elif [ $randomGenerator -eq 4 ]
        then
                flipCoin["TTT"]=$(($TTT))
                ((TTT++))
                ((counter++))

        elif [ $randomGenerator -eq 5 ]
        then
                flipCoin["TTH"]=$(($TTH))
                ((TTH++))
                ((counter++))
        elif [ $randomGenerator -eq 6 ]
        then
                flipCoin["THT"]=$(($THT))
                ((THT++))
                ((counter++))

        else
                flipCoin["THH"]=$(($THH))
                ((THH++))
                ((counter++))
        fi
done

HHH=${flipCoin["HHH"]}
HHT=${flipCoin["HHT"]}
HTH=${flipCoin["HTH"]}
HTT=${flipCoin["HTT"]}
TTT=${flipCoin["TTT"]}
TTH=${flipCoin["TTH"]}
THT=${flipCoin["THT"]}
THH=${flipCoin["THH"]}

printf "%s" "HHH is "  "$(($HHH*100/150))% "
printf "%s" "HHT is "  "$(($HHT*100/150))% "
printf "%s" "HTH is "  "$(($TTH*100/150))% "
printf "%s" " HTT is "  "$(($HTT*100/150))% "

printf "%s" "TTT is "  "$(($TTT*100/150))% "
printf "%s" "TTH is "  "$(($TTH*100/150))% "
printf "%s" "THT is "  "$(($THT*100/150))% "
printf "%s" "THH is "  "$(($THH*100/150))% "


sorted=$(printf ${flipCoin[@]} | sort | tail -1)
echo $sorted



## This is end of Tripplet Combination flipcoin ##