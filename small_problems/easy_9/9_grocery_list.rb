def buy_fruit(arr)
  result = []
  arr.each do |element|
    element[1].times do
      result << element[0]
    end
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]