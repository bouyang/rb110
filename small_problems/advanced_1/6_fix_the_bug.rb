def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# The method is supposed to square the value and return a new array with those values squared
# If one element, multiply by 7?

# In the original method, the elsif is blank so the conditional that it checks for is the map method call, which returns the original array which evaluates to true bc truthy
# Thus elsif evaluates to true and the code looks to execute what is next but there is nothing so it returns nil