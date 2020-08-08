#!/bin/bash -x
shopt -s extglob

#Pattern for First name and Last name
NAME_PATTERN='^[[:upper:]]{1}[[:alpha:]]{2,}$'

#Pattern for EMail address
EMAIL_PATTERN='^[[:alpha:]]{3,}([.+_-]?[[:alnum:]]+)?[@][[:alnum:]]+[.][[:alpha:]]{2,4}([.][[:alpha:]]{2,4})?$'

#Pattern for Mobile Number
MOBILE_PATTERN='^[0-9]{1,3}[ ][7-9]{1}[0-9]{9}$'

#Pattern for Password Rule 1: Minimum 8 chracters
PASSOWRD_PATTERN="^[[:alpha:]]{8,}$"

#Pattern for Password Rule 2: Atleast one upper case letter and Rule 1
PASSOWRD_PATTERN="^(?=.*[[:upper:]]).[[:alpha:]]{7,}$"

#Pattern for Password Rule 3: Atleast 1 numeric number and Rule 2
PASSOWRD_PATTERN="^(?=.*[[:upper:]])(?=.*[[:digit:]])[[:alnum:]]{8,}$"

#Pattern for Password Rule 4: Exact 1 special character and Rule 3
PASSWORD_PATTERN="^(?=[^@#$%!&]*[@#$%!&][^@#$%!&]*$)(?=.*[[:digit:]])(?=.*[[:upper:]])[A-Za-z0-9@#$%!&]{8,}$"

#To check Validation for User entries
function checkValidation() {
	input=$1
	pattern=$2
	if [[ $input =~ $pattern ]]
	then
		echo -e "Valid $3!\n"
	else
		echo -e "Invalid $3!\n"
	fi
}

read -p "Enter your First name: " firstName
checkValidation $firstName $NAME_PATTERN 'First name'

read -p "Enter your Last name: " lasttName
checkValidation $lasttName $NAME_PATTERN 'Last name'

read -p "Enter your EMail address: " eMail
checkValidation $eMail $EMAIL_PATTERN 'EMail address'

read -p "Enter your Mobile number: " mobileNumber
checkValidation "$mobileNumber" "$MOBILE_PATTERN" 'Mobile number'

read -p "Enter your Password: " password
checkValidation $password $PASSOWRD_PATTERN 'Password'
