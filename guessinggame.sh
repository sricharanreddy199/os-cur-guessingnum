#!/usr/bin/env bash


function file_count {
    echo $(ls -1 | wc -l)
}


correct=$(file_count)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"


while true
do
    read -p "Enter your guess: " guess

  
    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
        continue
    fi

    if [[ $guess -lt $correct ]]
    then
        echo "Your guess is too low. Try again!"
    elif [[ $guess -gt $correct ]]
    then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed the correct number: $correct"
        break
    fi
done
