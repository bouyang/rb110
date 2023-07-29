[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# Returns [1, 2, 3] because each iteration has the block evaluate to 'hi' which is truthy, so every element is added to
# the new collection that is being selected