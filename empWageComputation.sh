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
#Calculate daily employee wage
if(($isPresent == $randomcheck))
	then
		empperhour=20
		empdayhour=8
		salary=$(($empperhour*$empdayhour))
	else
		salary=0
fi
