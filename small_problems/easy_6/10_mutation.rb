array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# When the array2 values are being added by the each method invocation in line 3, the values that are being passed as arguments are the string objects in array1. Therefore, when those same
# string objects are mutated in the upcase! method invocation in line 4, those are the same objects that array2 are referencing so they are also upcased when we output the array2