#!/bin/bash

# this is a comment
# note - i did >> after every echo line to write the text to a log file called excercise2.log


echo "Choose either option 1 or 2:"
echo "1. Write text to screen"
echo "2. Write text to log file 'excercise2.log'"
read -p "Option: " option

number=$1

#note - OPTION 1
if [ $option -eq 1 ] 
then
# for loop to count to 10
for c in {1..5}; do
	echo "Count: $c"
	if [ $c -eq 3 ]; then
		echo "found the third item"
	fi
done

if [ -z $number ]; then #the loop looks at the parameter passed in
	echo "You didn't pass any paraemters to $0"
else
	echo "You passed in $1 to $0"
fi

# heres a brand new command: 
# it calls ps -ef, then pipes it into word counter
# then stores the result in ct

ct=$(ps -ef | wc -l)

#note - if statement to compare the parameter passed in to the number of processes
if [ $number -gt $ct ]
then
	echo "Maximum number of processes exceeded"
else
	echo "Maximum number of processes NOT exceeded"
fi
echo "There are $ct processes running on this machine"

#note - OPTION 2
elif [ $option -eq 2 ] 
then
# for loop to count to 10
for c in {1..5}; do
	echo "Count: $c" >> excercise2.log

	# if does not use == it uses -eq
	# note the spaces around if [ ]
	if [ $c -eq 3 ]; then
		echo "found the third item" >> excercise2.log
	fi
done

# how do we pass parameters from the command line
# into this bash script. 
# we use the notation $1, $2 etc to represent
# the first, second etc parameter into this script
if [ -z $number ]; then #the loop looks at the parameter passed in
	echo "You didn't pass any paraemters to $0" >> excercise2.log
else
	echo "You passed in $1 to $0" >> excercise2.log
fi

# heres a brand new command: 
# it calls ps -ef, then pipes it into word counter
# then stores the result in ct

ct=$(ps -ef | wc -l)

#note - if statement to compare the parameter passed in to the number of processes
if [ $number -gt $ct ]
then
	echo "Maximum number of processes exceeded" >> excercise2.log
else
	echo "Maximum number of processes NOT exceeded" >> excercise2.log
fi
echo "There are $ct processes running on this machine" >> excercise2.log

echo "Date & Time: " $(date) >> excercise2.log #this appends the date and time at the end of the script/loop
echo "-------------------" >> excercise2.log
#note - if the parameter passed in is not 1 or two
else
	echo "This is NOT a valid option!"
	echo "Try again"

fi
