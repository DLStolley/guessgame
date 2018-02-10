all: README.md

README.md:
	touch README.md
		echo "The title of the project is:" > README.md
		echo "**Guessing Game - Dany**" >> README.md
		echo " " >> README.md
		echo "The time and date the makefile was run is:" >> README.md
		date >> README.md
		echo " " >> README.md
		echo "The number of lines in guessinggames.sh is: " >> README.md
		wc -l < guessinggame.sh >> README.md

