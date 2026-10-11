#!/bin/bash
#Lab 4 - Excercise 3

#Variable for amount of CPU cores on machine
cpu_cores=$(nproc)

user_insert=$1

#Date and time variable to see what time the script was ran at
datetime=$(date '+%Y-%m-%d %H:%M:%S')

#Variable that shows the architecture of the system/operating system
os=$(arch --version)

#Variables for amount of CPUs for cores
cpu_cores2=$(more /proc/cpuinfo | grep processor | wc -l)

#Variable for dividing blocks of text for neater apperance when printed to screen
div=$(echo "---------------------")

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
       echo "$datetime"
       echo $div
       echo "$os"
else
	echo "$user_insert is less than the number of CPU cores"
	echo "The Amount of CPU cores: $cpu_cores2"
	echo "$datetime"
	echo "$div"
	echo "$os"
fi	

#Explaination for added commands
echo "$div"
echo "The command date was added so the user/buisness can see a timestamp for when the script was ran."
echo "The command arch was also added so the user/buisness can see the architecture of the VM."
