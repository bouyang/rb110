def shout_out_to(name)
  name = name.chars.map { |c| c.upcase! }.join

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

# In line 7 we invoke the shout_out_to method, passing in the string 'you' as an argument. In the method definition in lines 1 to 5, the shout_out_to method has the 'name' parameter to
# store the value of the string argument 'you' that is passed in. In line 2, we call the .chars method on the variable name, which returns an array of each character, or 'y', 'o', 'u'
# Then we invoke the each method on that array, passing in the block on line 2 with the block parameter 'c'. In the block, the upcase! method is invoked, passing in 'c' as an argument,
# so each element in the name.chars array is upcased and mutated. The each method returns the original array that was passed in, so the array ['y', 'o', 'u'] is returned.
# In line 4, we invoke the puts method passing in the string 'HEY' + the value in `name`. Outputting 'HEY you'

# We do not get the expected output in which name is mutated to 'YOU' because although each element of the ['y', 'o', 'u'] array was capitalized, the elements in that array were originally
# initialized as new elements in the array created by the .chars method invocation. The program as written could still work but the return of the capitalized array would need to be joined back into
# a string and the name variable re-assigned to that new string instead using a map method where the return value is the transformed array.