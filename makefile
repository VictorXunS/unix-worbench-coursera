update_readme:
	touch README.md
	echo "# Guessing game project" > README.md
	echo "Updated on: $(shell date)\n" >> README.md
	echo "Number of lines of code: $(shell wc -l < guessinggame.sh)" >> README.md
