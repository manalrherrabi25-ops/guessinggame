SHELL := bash
all: README.md

README.md: guessinggame.sh makefile
	echo "# Guessing Game" > README.md
	date >> README.md
	wc -l < guessinggame.sh >> README.md
