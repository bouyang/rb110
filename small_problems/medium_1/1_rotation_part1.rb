=begin

-----Problem-----
- Rotate an array: Move first element to end. Original array not modified

Input:
- Array of at least 1 element
Output:
- Rotated array

Explicit requirements:
- Move first element to end
- Original array not modified
Implicit requirements:
- Array has at least 1 element
- 

-----Examples-----
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']


-----Data Structure-----
Array input
May need an intermediate array where the first element is either stored elsewhere or added to a new array
Return the new rotated array


-----Algorithm-----
Initialize a new rotated array
Iterate through each element of input array, first skipping first element.
  - Starting from second element (index = 1), add to new array
  - Once hit the end of input array (index = input array size - 1), can then add first element
Return the newly rotated array


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

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p (rotate_array(x) == [2, 3, 4, 1])   # => true
p (x == [1, 2, 3, 4])              # => true