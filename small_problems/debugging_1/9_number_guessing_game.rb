def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      return
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # # Try again:
      # guess_number(max_number, max_attempts)
    end
  end
end

guess_number(10, 3)

=begin
In line 28, the guess_number method invocation is inside of the loop, so max_number and max_attempts remain the same as they were originally in line 33's method invocation. Thus, you will have unlimited
guesses because the attemps does not increment.

In addition, with the call to guess_number again in line 28, a new winning number is generated in line 6 so each guess' too small/big does not help because a new winning number is created
after each guess loop

=end