def halvsies(arr)
  first = []
  second = []

  arr.each_with_index do |element, idx|
    if idx < (arr.size + 1) / 2
      first << element
    else
      second << element
    end
  end

  resut = [first, second]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]