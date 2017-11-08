echo "HI!!"
echo "WELCOME TO GK QUIZ"

echo "Enter Your Name:"
read name

echo "Lets Start with the QUIZ $name"

FILENAME=$1

count=0
IFS=$'#'       # make newlines the only separator
set -f          # disable globbing
j=0
key=("D" "D" "A")
for i in $(cat < "$FILENAME")
  do
  	echo "$i"
  	read ans
  	if test $ans -eq ${key[j]}
  	then
		let count++
		echo "Right Answer"
  	else
		echo "Wrong Answer"
  	fi

  	let j++
  done


echo "You scored $count"



