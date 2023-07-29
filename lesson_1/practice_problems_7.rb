[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The block's return value is a boolean of if the value of each element is odd or not
# The return value of #any? is if any of the blocks evaluated to true, which does occur