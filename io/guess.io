reader := ReadLine
number := Random value(1, 100) floor
write("I'm thinking of a number between 1 and 100.\n")
prompt := "Guess the number: "
remainingGuesses := 10
while(remainingGuesses > 0, 
    nextLine := reader readLine(prompt)
    guess := nextLine asNumber
    if (guess == number, return write("You win! Game over.\n"),
        if (guess < number, write("Too cold\n"), write("Too hot\n"))
    )
    remainingGuesses = remainingGuesses - 1
)
write("You lose. The number was #{number}\n" interpolate)
