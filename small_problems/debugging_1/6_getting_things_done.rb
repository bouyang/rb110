def move(n, from_array, to_array)
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(2, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']

=begin
Since there is no way to check when to stop the method calls, the calls will occur recursively and infinitely as n decreases until there is no more memory on the stack and it causes the error
To fix this, we need a base case to check when to stop (ie. when the from_array is empty)
=end