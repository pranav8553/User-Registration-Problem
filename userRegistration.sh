#!/bin/bash -x
shopt -s extglob

#Pattern for First name and Last name
NAME_PATTERN="^[A-Z]{1}[A-Za-z]{2,}$"

#To check Validation for User entries
function checkValidation() {
	input=$1
	pattern=$2
	if [[ $input =~ $pattern ]]
	then
		echo "$3 is Valid"
	else
		echo "$3 is Invalid"
	fi
}

read -p "Enter your First name: " firstName
checkValidation $firstName $NAME_PATTERN "First name"

read -p "Enter your Last name: " lasttName
checkValidation $lasttName $NAME_PATTERN "Last name"

