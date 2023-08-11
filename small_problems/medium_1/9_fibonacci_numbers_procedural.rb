=begin

-----Problem-----
- Compute the fibonacci sequence of an nth number without using recursion

Input:
- n where n is the nth number in the fib seq
Output:
- the nth number in the fib seq

Explicit requirements:
- do not use recursion
Implicit requirements:
-

-----Examples-----
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
Edge cases?
fib 1 and 2 = 1

-----Data Structure-----
Integers for both input and output


-----Algorithm-----
if n == 1 or 2, return 1
  Iterate up from 3 to number n
  Sum will be equal to the previous 2 numbers
    For 3, will be 1 + 1 (Store both numbers)
    For 4+, will be previously calculated number and the next newest number
      Set newest number to previously calculated number, set previously calculated number to new sum
  Repeat until number n is reached


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

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501