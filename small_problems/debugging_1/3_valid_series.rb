def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 ? true : false
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false

=begin

In line 5, when we use the ternary operator to check for the count of odd numbers, the incorrect syntax is used and odd count is set to equal 3 and because that is a truthy value, the ternary
operator always evaluates to true, thus since it is the last line that is executed in the method, the return value is true and the last method invocation test case returns true.

The other test cases return false as expected because the line 2 if statement checks for if the sum is != 47 and if so, returns false and exits the method before the ternary operator check on line
5 can occur
  
=end