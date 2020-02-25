#!/bin/bash -x
echo "Welcome to employee wages problem"
isPresent=1
randomcheck=$((RANDOM%2))
#To check the employee is present or not
if(($isPresent == $randomcheck))
	then
		echo "Employee is present"
	else
		echo "Employee is absent"
fi
