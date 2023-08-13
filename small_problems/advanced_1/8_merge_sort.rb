=begin

P
- Sort an array using merge sort
- Break down array into sub elements, then merge two elements and sort them
- Continue until all sorted

E
Given

D
Will need nested array from input and merge into sub-arrays

A
Remember initial size
Starting from input array, find half (size / 2 - 1)
  Split into two arrays from 0 to half and half to -1
  For each element, find new half and then split into halves again
  Repeat until sizes are all 1 for each element

Start index counter that runs from 0 to size - 2
Merge by combining index and index + 1
  Sort those values
It will repeat until the index counter finishes

Repeat merging until size of final array = initial size
=end

def merge_sort(arr)
  size = arr.size

  half = arr.size / 2

  new_arr = []
  new_arr << arr[0, half]
  new_arr << arr[half, half + 1]

  loop do
    break if new_arr.all? {|ele| ele.size <= 1}
    new_arr2 = []
    new_arr.each do |ele|
      half = ele.size / 2
      new_arr2 << ele[0, half] unless ele[0, half] == []
      new_arr2 << ele[half, half + 1] unless ele[half, half + 1] == []
    end
    new_arr = new_arr2
  end

  loop do
    break if new_arr.first.size == size
    new_sort = []
    idx = 0
    loop do
      break if idx > new_arr.size - 2
      new_sort << (new_arr[idx] + new_arr[idx + 1]).sort
      idx += 2
    end
    if new_arr.size.odd?
      new_sort << new_arr[-1]
    end
    new_arr = new_sort
  end

  new_arr.flatten
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)