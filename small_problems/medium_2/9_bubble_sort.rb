=begin

-----Problem-----
- On each pass of an array, each pair of consecutive elements is compared
- If first of the two elements is greater, the two elements are swapped
- Repeat until a complete pass is made without any swaps

Input:
- Array of elements
Output:
- Sorted array

Explicit requirements:
- Sort the array that is passed in as an argument
- At least 2 elements
- Elements can be numbers or strings
Implicit requirements:
- 

-----Examples-----
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
Edge cases?

-----Data Structure-----
Input is an array
While sorting, same array will be mutated
Output is also an array


-----Algorithm-----
In a loop that checks if swaps were made
  Starting at index 0, compare with next index
    If left (index 0) is greater than right (index 0 + 1) using <=> == 1, then exchange values and record that a swap was done
    Increment index counter
    Repeat until index counter is 2 less than number of elements (index of last - 1)
If all of the array was checked and no swaps were made, return the array


=end

def bubble_sort!(arr)
  size = arr.size

  loop do
    swapped = false
    (0..(size - 2)).each do |idx|
      if arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        swapped = true
      end
    end
    break unless swapped
  end
  arr
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)