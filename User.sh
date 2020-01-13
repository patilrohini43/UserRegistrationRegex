#!/bin/bash -x

echo "User Registration"

#read -p "Enter User First Name" firstName
#read -p "Enter User Last Name" lastName
#read -p "Enter Email Id" email
#read -p "Enter Mobile Number " mobNumber
read -p "Enter Password" password

pat=^[A-Z]{1}[a-z]{2}[a-z]*$
emailPat=^abc\.[xyz?]+@bl\.co\.[in?]
mobilePat=^91\-[0-9]{10}$
#rule1=[a-zA-Z]{8,}
#rule2=[A-Z]{1}
rule3=[0-9]{1}

if [[ $firstName =~ $pat ]] && [[ $lastName =~ $pat ]]
then
	echo "Good Name"
else
	echo "Invalid Name Please Enter First Char only Upper Case"
fi

if [[ $mobNumber =~ $mobilePat ]]
then
	echo "Valid Mobile Number"
else
	echo "Invalid Mobile Number"
fi

if [[ $password =~ $rule3 ]]
then
	echo "Valid Password"
else
	echo "Invalid Password"
fi




