arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

arr2 = arr.map do |element|
  element.reject do |num|
    num % 3 != 0
  end
end

p arr2