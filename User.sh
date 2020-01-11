#!/bin/bash -x

echo "User Registration"

read -p "Enter User First Name" firstName
pat=^[A-Z]{1}[a-z]{2}[a-z]*$
if [[ $firstName =~ $pat ]]
then
	echo "Good Name"
else
	echo "Invalid Name Please Enter First Char only Upper Case"
fi


