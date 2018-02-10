#!usr/bin/env bash
#! guessinggame.sh

function guessme {
	echo "How many files do you think are the current directory? Type your guess and then press Enter:"
	read guess
	echo " "
}
numfiles=$(ls -1 | wc -l)
guess=0
while [ "$guess" -ne  "$numfiles" ]
do
guessme

if [ "$guess" -lt "$numfiles" ]
then
	echo "You guessed too low"
	echo " "
	echo " "
elif [ "$guess" -gt "$numfiles" ] 
then

	echo "You guessed too high"
	echo " "
	echo " "
fi

done

echo "You guessed correctly!"
echo $numfiles
