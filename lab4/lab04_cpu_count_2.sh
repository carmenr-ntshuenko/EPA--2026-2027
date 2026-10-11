#!/bin/bash
#Lab 4 - Excercise 2

#Variable for amount of CPU cores on machine
cpu_cores=$(nproc)

user_insert=$1

#Variables for amount of CPUs for cores
cpu_cores2=$(more /proc/cpuinfo | grep processor | wc -l)

#If statement in case user enters nothing

if [[ -z $user_insert || ! $user_insert =~ ^[0-9]+$ ]]; then
	echo "You did not enter a number. Try again!"
	echo "Entered: $user_insert"
	exit 1
fi

#To compare the parameter to number of cores
if [ $cpu_cores -lt $user_insert ]
then
	echo "There are less CPU cores than $user_insert"
       echo "Amount of CPU cores: $cpu_cores"
else
	echo "$user_insert is less than the number of CPU cores"
	echo "The Amount of CPU cores: $cpu_cores2"
fi	

