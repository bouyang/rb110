def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.prepend(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

=begin
In line 14, we invoke the reverse_sentence method passing in the string 'how are you doing' as an argument. In lines 1-12, in the method definition for reverse_sentence, the parameter sentence is the
variable that points to the argument that was passed in which is the string object 'how are you doing'.

In line 2, we initialize the local variable words to the return value of the method invocation split on the string contained in sentence, passing in a space as an argument. This causes the words
variable to point to an array with elements being each word of the sentence string

In line 3, we initalize the local variable reversed_words to an empty array

In line 5, we initialize the local variable i to the integer 0
In lines 6 to 9, we begin a while loop, with the condition that the loop will break when i >= words.length
  In line 7, the array pointed to by reversed_words is re-assigned to the value of the words array at the i index + the reversed_words array.
  Then in line 8, we increment i by 1
  This loop repeats until i >= words.length, or when i increments to 4, so 4 iterations of the loop will occur
Finally in line 11, the reversed_words array has its elements joined by invoking the join method on the reversed_words array passing in a space as an argument, so each element will be joined into
a string with a space in between each element

This method does not give the expected output because of line 7. We are attempting to add a string (words[i]) to an array (reversed_words) which does not work. In order to fix this, we can
add the string as an element to the beginning of the reversed_words array
=end