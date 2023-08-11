=begin

-----Problem-----
- Given a number, find the last n digits of the number and rotate them

Input:
- Number to rotate, n for number of digits that you want to rotate
Output:
- New number

Explicit requirements:
- Take last n digits of the number and rotate them
- n is always a positive integer
- rotating 1 digit results in original number
Implicit requirements:
- n can be from 1 to the entire number's digits

-----Examples-----
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917


-----Data Structure-----
Input is an integer, may want to split into digits in an array
Intermediate of storing the unrotated digits in an array, may want to store rotated digits in a separate array
Output is an integer so need to join the array back to an integer


-----Algorithm-----
Split the number into an array of digits
Store the unrotating numbers separately
For digits to rotate, pass as an argument to the rotate array method
Join the newly rotated digits array to the original unrotated array
Join all the elements together and return


=end
def rotate_array(arr)
  rot_arr = []
  if arr.size == 1
    rot_arr << arr[0]
  else
    (1..(arr.size - 1)).each do |idx|
      rot_arr << arr[idx]
      if idx == (arr.size - 1)
        rot_arr << arr[0]
      end
    end
  end
  rot_arr
end

def rotate_rightmost_digits(num, n)
  rot_arr = num.to_s.chars
  rot_arr[-n..-1] = rotate_array(rot_arr[-n..-1])
  rot_arr.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917