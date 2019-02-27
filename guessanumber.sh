randnum=$RANDOM
secret=${randnum:0:1}

function game {
	read -p "Guess a random one-digit number! " guess 
	while [[ $guess != $secret ]];do
		read -p "Wrong guess. Try again! " guess
	done
	echo "Good, $secret it is! "
}

function generate {
	echo "A random number is: $randnum"
	echo -e "Hint: type \033[1m$0 game\033[0m for a fun diversion!"
}

if [[ $1 =~ game|Game|GAME ]]; then
	game
else
	generate
fi

