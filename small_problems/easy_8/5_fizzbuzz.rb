def fizzbuzz(start, end_num)
  start.upto(end_num) do |num|
    if num % 3 == 0 && num % 5 == 0
      puts 'FizzBuzz'
    elsif num % 3 == 0
      puts 'Fizz'
    elsif num % 5 == 0
      puts 'Buzz'
    else
      puts num
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz