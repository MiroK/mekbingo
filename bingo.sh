#!/bin/bash


for i in $(seq 1 $1)
do
    # Sub and pipe to pdflatex creating bingo.pdf. Seed differently
    # for different cards
    sed -e 's/SEED/'$i'/g' bingo.tex | pdflatex --jobname bingo --
    mv bingo.pdf bingo_$i.pdf
    # Print it @UIO
    lpr -P pullprint_ricoh bingo_$i.pdf
done
