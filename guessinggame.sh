#!/usr/bin/env bash

real_nb=$(expr $(ls -l | wc -l) - 1)

function check_result {
    if [[ $1 -lt $real_nb ]]; then
        echo $1 is too low.
    elif [[ $1 -gt $real_nb ]]; then
        echo $1 is too high.
    else
        guessed=1
    fi
}

guessed=0
guesses=0
while [[ guessed -ne 1 ]]
do
    read -p 'Guess how many files are in this directory? ' guess_nb
    let guesses+=1
    check_result $guess_nb
done

echo Well done! Found in $guesses guess\(es\).

