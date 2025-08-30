#!/bin/bash

read -p "Enter a number:" NUM
echo

if [ $NUM -gt 100 ] #  MIND THE SPACES -- [  ] , else u get error
then
	echo "Num is greater than 100, BINGO!"
	sleep 3
	date

else
	echo "Num wasn't lesser than 100, BONGO!"

fi

echo "Script has run"
