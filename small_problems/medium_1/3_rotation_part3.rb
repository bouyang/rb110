=begin

-----Problem-----
- Rotate a given number, then keep 1st digit in place and rotate the rest. Repeat until you hold (digits - 2) and rotate final 2 digits

Input:
- Integer
Output:
- Maximum rotated integer

Explicit requirements:
- Return the maximum rotation of the integer
- If there is a leading zero, it is dropped
Implicit requirements:
- At least 1 digit

-----Examples-----
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

Edge cases?
Handle leading zero (during rotation, may need to convert to integer so leading zeroes are dropped)

-----Data Structure-----
Array input, pass arrays of digits to be rotated into previously written methods
Output integer


-----Algorithm-----
Counter for number of rotations/which digits to keep
Starting at 0, Rotate all digits (for RRD method, n = #digits)
Increment counter, Keep counter digits fixed, rotate remaining digits (n = #digits - counter)
Repeat until counter is at #digits - 2
Join array together and convert to integer


=end
def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(num, n)
  rot_arr = num.to_s.chars
  rot_arr[-n..-1] = rotate_array(rot_arr[-n..-1])
  rot_arr.join.to_i
end

def max_rotation(num)
  num_digits = num.to_s.size
  count = 0
    loop do
      num = rotate_rightmost_digits(num, num_digits - count)
      count += 1
      break if count > (num_digits - 2)
    end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845