#!/bin/bash -x
shopt -s extglob

#Pattern for First name
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
