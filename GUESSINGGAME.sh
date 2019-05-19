#!/bin/bash

nof=$(ls -l|wc -l)
read -p "Guess the number of files in the current directory, type your guess and press enter:   " reply

until [[ $reply -eq $nof ]];
do
    if [[ $reply -gt $nof ]];then
	echo " $reply is too high, please try again"
else [[ $reply -lt $nof ]]
	 echo " $reply is too low, please try again"
    fi
    read -p "Guess the number of files in the current directory, type your guess and press enter:   " reply
done

echo "Congratulations, your guess is true"


##Notes: 1.  'else' in the if conditional shouldn't have a semi colon at the end ( ; )
##  2.S
##  3.  when using the read -p command, you have to include the variable at the end of the description
##  4.  Its good practice to always write your variables in lowercase as uppercase variables are usually
##      interpreted as shell builtin variables
##  5.  You have to close your if loop with fi
