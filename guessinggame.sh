#!/usr/bin/env bash
# File: guessinggame.sh
correct_number=$(ls | wc -l)
print_something () {
echo Hello
}
print_something
echo "How many files are in the current directory?"
echo "Type in the number that you guess:"
read response
echo "You entered: $response" 

if ! [[ "$response" =~ ^[0-9]+$ ]] ; 
 then exec >&2; echo "error: Not a number"; exit 1
fi

while [[ $response -ne $correct_number ]]
do
if ! [[ "$response" =~ ^[0-9]+$ ]] ;
 then exec >&2; echo "error: Not a number"; exit 1
fi
while [[ $response -gt $correct_number ]]
do
  if ! [[ "$response" =~ ^[0-9]+$ ]] ;
 then exec >&2; echo "error: Not a number"; exit 1
fi
  echo "Your guess was too high. Please try again"
  echo "Type in the number that you guess:"
read response
echo "You entered: $response"
done 

while [[ $response -lt $correct_number ]]
do

if ! [[ "$response" =~ ^[0-9]+$ ]] ;
 then exec >&2; echo "error: Not a number"; exit 1
fi
  echo "Your guess was too low. Please try again"
  echo "Type in the number that you guess:"
read response
echo "You entered: $response"
done 
done 

if [[ $response -eq $correct_number ]]
then 
echo "Correct! Congratulations!"
echo "End program"
fi

