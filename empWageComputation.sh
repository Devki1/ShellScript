#!/bin/bash -x
echo "Welcome to employee wages problem"
isPresent=1
partTime=1
fullTime=2
empPerHour=20
randomCheck=$((RANDOM%3))
#To check the employee is present or not
if(($isPresent == $randomCheck))
	then
		echo "Employee is present"
	else
		echo "Employee is absent"
fi
#Calculate daily employee wage
if(($isPresent == $randomCheck))
	then
		empdayhour=8
		salary=$(($empPerhour*$empdayhour))
	else
		salary=0
fi
#Add part time employee and wage
if(($partTime == $randomCheck))
	then
		empHrs=4
	elif(($fullTime == $randomCheck))
	then
		empHrs=8
	else
		empHrs=0
fi
salary=$(($empPerhour*$empHrs))
#Add parttime and fulltime employee wage by using case statement
case $randomCheck in
		$partTime)
			empHrs=4
				;;
		$fullTime)
			empHrs=8
				;;
		*)
			empHrs=0
				;;
esac
salary=$(($empPerHour*$empHrs))
