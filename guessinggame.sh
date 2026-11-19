#!/usr/bin/env bash

function count_files {
    ls -1 | wc -l
}

correct=$(count_files)

echo "Welcome to the Guessing Game!"
echo "Guess the number of files in the current directory."

while true
do
    echo "Enter your guess:"
    read guess

    if [[ ! "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
    elif [[ $guess -lt $correct ]]
    then
        echo "Too low! Try again."
    elif [[ $guess -gt $correct ]]
    then
        echo "Too high! Try again."
    else
        echo "Congratulations! Your guess is correct!"
        break
    fi
done
