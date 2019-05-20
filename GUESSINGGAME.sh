#!/bin/bash

############################

#Colour codes definition

Color_Off='\033[0m'       # Text Reset
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BBlue='\033[1;34m'        # Blue
BCyan='\033[1;36m'        # Cyan
Green='\033[0;32m'        # Green

#############################

echo -e "${BCyan}\nGUESSING GAME written by BRENDAH RONAH ${Color_Off}"

number_of_files=$(ls -l|wc -l)

function your_guess {	
       read -p "Guess the number of files in this directory, type your guess and press enter:   " reply
       while [ -z $reply ] # This will tell whether the user did not enter a reply
       do
	   your_guess
       done
}

your_guess

while [ $reply -ne $number_of_files ]  # This is for whether the guess is not equal to the number of files in the directory
do
    if [ $reply -gt $number_of_files ]
    then
	echo -e "${BBlue}\nSorry, your guess is too high, please try again.${Color_Off}"
    else [ $reply -lt $number_of_files ]
	 echo -e "${Green}\nSorry, your guess is too low, please try again.${Color_Off}"
    fi
    your_guess
done

if [ $reply -eq $number_of_files ]
then
    echo -e "${BGreen}\nCONGRATULATIONS!!!!!!, YOUR GUESS IS TRUE. ${Color_Off}"
    exit
else 
    echo -e "${BRed}\nERROR!!....Please check your input and try again. ${Color_Off}"
fi
