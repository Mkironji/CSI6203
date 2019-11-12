#!/bin/bash
#This function prints a given error
printError()
{
    echo -e "\033[31mERROR:\033[0m" $1
}
printError
#this function will get a value between the 2nd and 3rd argument
getNumber()
{
    read -p "$1:"
    while (( $REPLY <2 || $REPLY > $3)); do
        printError "Input must be between $2 and $3"
        read -p "$1"
    done
}
echo "this the start of your script"
getNumber "please type a number between 1 and 100" 1 100
echo "Thank you"

get_file()
{
	local number=$(ls -l | wc -l)-1
	echo $number
}

correct=$(get_file)

while [[ $REPLY -ne $correct ]]
do
	if [[ $REPLY -gt $correct ]]
	then
		echo "Sorry, your guess was too high..."
	else 
		echo "Sorry, your guess was too low..."
	fi
	echo
	echo "Try again: "
	read REPLY
done

echo "Congratulations! You guessed the correct answer!"