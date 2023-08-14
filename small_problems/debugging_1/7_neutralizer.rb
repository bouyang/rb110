def neutralize(sentence)
  words = sentence.split(' ')
  words_copy = words.clone
  words.each do |word|
    words_copy.delete(word) if negative?(word)
  end

  words_copy.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

=begin
Because we are mutating the words array as we iterate through it by the each method, it causes the iteration to not work as expected. For instance, the word dull is deleted and instead of going to
the next word 'boring', because 'dull' was deleted, the each method incorrectly skips 'boring' and goes to cards on the next iteration for 'each'.

To fix this, we can create a copy of the array and delete those words, so the original array that is being iterated through does not get mutated and the each method call can iterate correctly through
each element
=end