#!/bin/bash


# this is a comment

number=$1 #note - parameter for the number entered by user

# for loop to count to 10
for c in {1..5}; do
	echo "Count: $c"

	# if does not use == it uses -eq
	# note the spaces around if [ ]
	if [ $c -eq 3 ]; then
		echo "found the third item"
	fi
done

# how do we pass parameters from the command line
# into this bash script. 
# we use the notation $1, $2 etc to represent
# the first, second etc parameter into this script
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
