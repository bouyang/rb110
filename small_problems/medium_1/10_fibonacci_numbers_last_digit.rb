=begin

-----Problem-----
-

Input:
-
Output:
-

Explicit requirements:
-
Implicit requirements:
-

-----Examples-----

Edge cases?

-----Data Structure-----



-----Algorithm-----



=end

def fibonacci(n)
  num1 = 1
  num2 = 1
  sum = 0

  if n == 1 || n == 2
    return 1
  else
    (n - 2).times do
      sum = num1 + num2
      num1 = num2
      num2 = sum
    end
    sum
  end
end

def fibonacci_last(n)
  fibonacci(n).to_s[-1].to_i
end


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4