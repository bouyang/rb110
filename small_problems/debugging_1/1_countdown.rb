def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

# In line 9, we invoke the decrease counter method passing in the argument of the value of counter which then causes the counter variable initialized
# in line 2 to be decreased by 1 and returned by the method. However, that does not update the counter variable initialized in line 5 from 10, so the
# subsequence loops keep printing out the value of counter which remains 10

# To fix, you must update the counter variable by setting counter to equal the updated value which is the return value in the decrease method invocation
# in line 9