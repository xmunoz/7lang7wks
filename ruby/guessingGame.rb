numGuesses = 3
secret = rand(10) + 1
puts "Let's get started!"
puts "I'm thinking of a number between 1 and 10."
win = false
while numGuesses > 0
    if numGuesses == 1
        puts "You have #{numGuesses} guess left."
    else
        puts "You have #{numGuesses} guesses left."
    end
    numGuesses = numGuesses - 1
    guess = gets.chomp
    i_guess = guess.to_i
    if i_guess == secret
        puts "You win! The number is #{secret}"
        win = true
        break
    elsif i_guess < secret
        puts "#{guess} is less than the number that I'm thinking of"
    else
        puts "#{guess} is larger than the number that I'm thinking of"
    end
end

if !win
    puts "Game over. The number was #{secret}. You lose :("
end
