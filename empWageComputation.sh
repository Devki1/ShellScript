#!/bin/bash -x
echo "Welcome to employee wages problem"
isPresent=1
parttime=1
fulltime=2
empperhour=20
randomcheck=$((RANDOM%3))
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
		empdayhour=8
		salary=$(($empperhour*$empdayhour))
	else
		salary=0
fi
#Add part time employee and wage
if(($parttime == $randomcheck))
	then
		empHrs=4
	elif(($fulltime == $randomcheck))
	then
		empHrs=8
	else
		empHrs=0
fi
salary=$(($empperhour*$empHrs))
