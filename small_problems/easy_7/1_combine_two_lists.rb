def interleave(arr1, arr2)
  combined = []

  arr1.each_with_index do |ele, idx|
    combined << ele << arr2[idx]
  end

  combined
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']