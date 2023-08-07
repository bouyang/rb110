def reverse_sentence(str)
  rev = []
  str.split.reverse_each do |word|
    rev << word
  end
  rev.join(' ')
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''