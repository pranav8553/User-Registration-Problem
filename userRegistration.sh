#!/bin/bash -x
shopt -s extglob

#Pattern for First name and Last name
NAME_PATTERN='^[A-Z]{1}[A-Za-z]{2,}$'

#Pattern for EMail address
EMAIL_PATTERN='^[A-Za-z]{3,}([.+_-]?[A-Za-z0-9]+)?[@][A-Za-z0-9]+[.][A-Za-z]{2,4}([.][A-Za-z]{2,4})?$'

#Pattern for Mobile Number
mobilePattern='^[0-9]{1,3}[ ][7-9]{1}[0-9]{9}$'

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
checkValidation $firstName $NAME_PATTERN 'First name'

read -p "Enter your Last name: " lasttName
checkValidation $lasttName $NAME_PATTERN 'Last name'

read -p "Enter your EMail address: " eMail
checkValidation $eMail $EMAIL_PATTERN 'EMail address'

read -p "Enter your Mobile number: " mobileNumber
checkValidation "$mobileNumber" "$mobilePattern" 'Mobile number'
