=begin

P
- Take two sorted arrays and return a new array that contains all elements from both arguments in sorted order

Expl:
- New array
- Do not sort the result array, build the array one element at a time
- Do not mutate the input arrays
Impl:
- If empty array, should just be the other array returned, edge case?

E
Given

D
New result array

A
Initialize new result array
Check if any empty arrays and if so, put all elements of the other array into the new array and return it
Iterate through each element of each array and compare. Whichever is smaller, add that to the new array
  Initialize index counters for each array
  When you add an element to the result array, increment the index for that respective array by 1
  Eventually you will hit index beyond the array so will return nil.
  Incorporate a nil checker and if so, add the next element of the non-nil array
  When both nil, result array should be done and can return it
Return the new array

=end

def merge(arr1, arr2)
  result = []
  if arr1.empty?
    result = arr2
  elsif arr2.empty?
    result = arr1
  else
    idx1 = 0
    idx2 = 0
    loop do
      break if arr1[idx1] == arr2[idx2] && arr1[idx1] == nil
      if arr1[idx1] == nil
        result << arr2[idx2]
        idx2 += 1
        next
      elsif arr2[idx2] == nil
        result << arr1[idx1]
        idx1 += 1
        next
      end

      if arr1[idx1] <= arr2[idx2]
        result << arr1[idx1]
        idx1 += 1
      elsif arr1[idx1] > arr2[idx2]
        result << arr2[idx2]
        idx2 += 1
      end
    end
  end
  result
end



p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]