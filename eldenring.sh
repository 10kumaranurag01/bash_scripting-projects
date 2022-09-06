#!/bin/bash

echo "Welcome tarnished. Please select your class:
1 - Samurai
2 - Prisioner
3 - Prophet"

read class

case $class in
	1)
       		type="Samurai"
       		hp=10
       		attack=20
       		;;
        2)
		type="Prisoner"
       		hp=20
       		attack=4
       		;;
        3)
		type="Prophet"
       		hp=30
       		attack=4
		;;
esac

echo "You've choosen the $type class. Your HP is $hp and your attack is $attack ." 

#First beast battle

beast=$(($RANDOM % 2))

echo "Your first beast is approaching. Preapare to battle. Pick a number between 0 and 1 (0/1)"

read tarnished

if [[ $beast = $tarnished && 47 > 22 ]]; then
	echo "Beast VANQUISHED!! Congrats fellow tarnished"
else
	echo "You died!!"
	exit 1
fi

sleep 2

#Boss battle

echo "Boss battle. Get scared. It's Margit. Pick a number between 0-9. (0-9)"

read tarnished

beast=$(($RANDOM % 10))

if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
	echo "Boss VANQUISHED!! Congrats fellow tarnished"
elif [[ $USER == "looser" ]]; then
	echo "Looser always wins. You vanquished the boss!!"
else
        echo "You died!!"
fi
