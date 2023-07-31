def multisum(num)
  sum = 0
  (1..num).each do |number|
    sum += number if (number % 3 == 0 || number % 5 == 0)
  end
  sum
end

def multisum2(num)
  arr = []
  1.upto(num) do |number|
    arr << number if (number % 3 == 0 || number % 5 == 0)
  end
  sum = arr.inject(:+)
  sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

p multisum2(3) == 3
p multisum2(5) == 8
p multisum2(10) == 33
p multisum2(1000) == 234168