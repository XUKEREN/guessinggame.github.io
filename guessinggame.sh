#!/usr/bin/env bash
# File: guessinggame.sh
print_something () {
echo Hello
}
print_something
echo "How many files are in the current directory ?"
echo "Type in the number that you guess:"
read response
echo "You entered: $response" 
while [[ $response -gt 3 ]]
do
  echo "Your guess was too high. Please try again"
  echo "Type in the number that you guess:"
read response
echo "You entered: $response"
done
while [[ $response -lt 3 ]]
do
  echo "Your guess was too low. Please try again"
  echo "Type in the number that you guess:"
read response
echo "You entered: $response"
done 
if [[ $response -eq 3 ]]
then 
echo "Correct! Congratulations!"
fi

echo "End program"
