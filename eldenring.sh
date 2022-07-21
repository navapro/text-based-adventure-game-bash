#!/bin/bash

echo "Welcome tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"

read class

case $class in

	1) 
		type = "Samurai"
		hp = 10 
		atatck = 20
		;;
	2)    
		type = "Prisoner"
		hp = 20
		attack = 4
		;;
	3) 	
		type = "Prophet"
		hp = 30
		attack = 4
		;;
esac

echo "You have chosen $type class. Your HP is $hp and your attack is $attack."



echo "You Died"

# First beast battle

beast=$(($RANDOM % 2))

echo "Your first beast approaches. Prepare to battle. Pick a number between 0-1. (0/1)"

read tarnished 

if [[ $beast == $tarnished]]; then 
	echo "Beast VANQUISHED!!"
else
	echo "You Died"
	exit 1
fi

sleep 2


echo "Boss battle. Pick a number between 0-9. (0-9)"

read tarnished 

beast=$(($RANDOM % 10))

if [[ $beast == $tarnished || $tarnished == "fire"]]; then
	echo "Beast Vanquished"
elif [[$USER == "test"]]; then
	echo "Test always wins, Beast Vanquished"
else
        echo "You Died"
	exit 1
fi

