# TRIAL LECTURE BINGO

You might need to `chmod u+x bingo.sh` to make the script executable. To
generate new cards provide your `\randomwords` in `bingo.tex`. Running
`./bingo.sh 100` will produce 100 sheets of bingo cards in `cards` directory.
One sheet has two bingo cards. It might be convenient to send the cards
to the printer rightaway. At UiO, provided that `pullprint_ricoh` is still
a thing, `./bingo.sh 100 --print` should do the job.

