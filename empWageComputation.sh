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
#Calculating wage for a month 
for(( day=1;day<=$empPerHour;day++))
do
	randomCheck=$((RANDOM%3))
	case $randomCheck in
		$fullTime)
			empHrs=8
			;;
		$partTime)
			empHrs=4
			;;
		*)
			empHrs=0
			;;
esac
salary=$(($empHrs*$empPerHour))
totalSalary=$(($totalSalary+$salary));
done
