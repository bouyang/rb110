def running_total(arr)
  arr2 = []
  running_sum = 0
  arr.each do |element|
    running_sum = element + running_sum
    arr2 << running_sum
  end
  arr2
end

def running_total2(arr)
  running_sum2 = 0
  arr.each_with_object([]) do |element, arr2|
    running_sum2 = element + running_sum2
    arr2 << running_sum2
  end
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

p running_total2([2, 5, 13]) == [2, 7, 20]
p running_total2([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total2([3]) == [3]
p running_total2([]) == []