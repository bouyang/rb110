words = "the flintstones rock"

words = words.split

words.each do |word|
  word.capitalize!
end

words = words.join(' ')

p words