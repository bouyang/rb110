=begin

-----Problem-----
- Computes the difference between the square of (the sum of the first n positive integers) and then sum of (the squares of the first n positive integers)

Input:
- Number n
Output:
- Number which is the difference between the first part value and the second part value

Explicit requirements:
- Sum the first n positive integers and square it, then subtract the squares of the first n positive integers
- Includes n
Implicit requirements:
- n is a positive integer

-----Examples-----

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
Edge cases?

-----Data Structure-----
Iterate through numbers up to and including n, sum those up then square it to get the first part value
  Also square each of those and sum those up to get the second part value
Integers to store those values


-----Algorithm-----
Initialize two variables to store first part and second part values
Iterate from 1 to n
  Add to the first part sum
  Square then add to second part sum
Square the first part sum
Subtract second part from first part


=end
def sum_square_difference(n)
  first_val = 0
  second_val = 0

  (1..n).each do |num|
    first_val += num
    second_val += (num ** 2)
  end
  first_val = first_val ** 2
  first_val - second_val
end


p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150