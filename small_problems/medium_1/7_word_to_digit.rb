=begin

-----Problem-----
- Take sentence string, return same string but replace numbers as words to digits (also strings still)

Input:
- sentence string
Output:
- setence string but change the numbers from words to digits

Explicit requirements:
- Return same string
Implicit requirements:
- 

-----Examples-----
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
Edge cases?

-----Data Structure-----
Input string as array to be able to iterate through each word

Output string so may need to transform array to string


-----Algorithm-----
Taking input string, split into array of words
Iterate through each word, looking for any "number words"
  Hash of word -> digit, check if the word exists in the hash
  Convert number words to number digit using hash value -> key
Join sentence array back to string
Return string


=end
DIGITS = {'one'=> '1', 'two'=> '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9', 'zero' => '0'}

def word_to_digit(str)
  str.split.map do |word|
    if DIGITS.key?(word)
      DIGITS[word]
    elsif DIGITS.key?(word[0, (word.length - 1)])
      DIGITS[word[0, (word.length - 1)]] + word[-1]
    else
      word
    end
  end.join(' ')
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'