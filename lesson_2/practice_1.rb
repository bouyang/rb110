arr = ['10', '11', '9', '7', '8']

arr2 = arr.sort { |val1, val2| val2.to_i <=> val1.to_i }

p arr2