#!/bin/bash

# Regardless of the printing the cards are stored in a `bingo_cards` folder
dir=cards
if [[ ! -e $dir ]]; then
    mkdir $dir
fi

for i in $(seq 1 $1)
do
    # Sub and pipe to pdflatex creating bingo.pdf. Seed differently
    # for different cards
    sed -e 's/SEED/'$i'/g' bingo.tex | pdflatex --jobname bingo --
    mv bingo.pdf $dir/bingo_$i.pdf
done

# Optional UiO printing
if [ "$#" -ge 1 ]; then
    echo $2
    if [ "$2" == "--print" ]; then
        # Chose some printer
        for i in $(seq 1 $1)
        do
            lpr -P pullprint_ricoh $dir/bingo_$i.pdf
        done
    fi
fi
