=begin

-----Problem-----
- Using recursion, write a method that computes the fibonacci number of n where n is the nth number of the Fibonacci sequence

Input:
- Number n which represents the nth number in the Fibonacci sequence
Output:
- What number is in the nth position of the Fib sequence

Explicit requirements:
- Use recursion
  - Call themselves at least once
  - Condition that stops the recursion
  - Use the result returned by themselves
Implicit requirements:
- n is > 0

-----Examples-----
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
Edge cases?
Fib or 1 and 2 are 1

-----Data Structure-----
Input and output are integers


-----Algorithm-----
Establish base case/when to stop recursion, when n == 1 or 2
  - When n == 1 or 2, should return 1
For all other cases, should add itself to the previous two numbers (n - 1) and (n - 2)
Return that sum


=end
def fibonacci(n)
  if n == 1 || n == 2
    return 1
  else
    sum = fibonacci(n - 1) + fibonacci(n - 2)
  end
end




p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765