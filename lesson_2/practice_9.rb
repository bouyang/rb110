arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr2 = arr.map do |element|
  element.sort do |val1, val2|
    val2 <=> val1
  end
end

p arr2