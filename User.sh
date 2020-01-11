#!/bin/bash -x

echo "User Registration"

read -p "Enter User First Name" firstName
read -p "Enter User Last Name" lastName
read -p "Enter Email Id" email

pat=^[A-Z]{1}[a-z]{2}[a-z]*$
emailpat=^abc\.[xyz?]+@bl\.co\.[in?]

if [[ $firstName =~ $pat ]] && [[ $lastName =~ $pat ]]
then
	echo "Good Name"
else
	echo "Invalid Name Please Enter First Char only Upper Case"
fi

abc=0
dot=0
xyz=0
bl=0
co=0
in=0

if [[ $email =~ ^abc ]]
then
	abc=1
fi

if [[ $email =~ \. ]]
then
	dot=1
fi

if [[ $email =~ [xyz?] ]]
then
	xyz=1
fi

if [[ $email =~ @bl ]]
then
	bl=1
fi


if [[ $email =~ \.co ]]
then
	co=1
fi

if [[ $email =~ \.in ]]
then
	in=1
fi

if [[ $abc = 0 ]]
then
	echo "please start with abc"
fi

if [[ $dot = 0 ]]
then
	echo "Enter . "
fi

if [[ $xyz = 0 ]]
then
	echo "please enter x to z and letter "
fi

if [[ $bl = 0 ]]
then
	echo "please enter @bl  "
fi

if [[ $co = 0 ]]
then
	echo "please enter .co  "
fi

if [[ $in = 0 ]]
then
	echo "please enter .in  "
fi



