#!/bin/bash
#Lab 4 - Excercise 1

#Variable for amount of CPU cores on machine
cpu_cores=$(nproc)

user_insert=$1

#Variables for amount of CPUs for cores
cpu_cores2=$(more /proc/cpuinfo | grep processor | wc -l)

#To compare the parameter to number of cores
if [ $cpu_cores -lt $user_insert ]
then
	echo "There are less CPU cores than $user_insert"
       echo "Amount of CPU cores: $cpu_cores"
elif [ $cpu_cores -ge $user_insert ]
then
	echo "$user_insert is not more than the number of CPU cores"
	echo "Number of CPU cores: $cpu_cores2"
else
echo "Invalid option."
fi


