hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = ['a', 'e', 'i', 'o', 'u']

hsh.each_value do |arr|
  arr.each do |word|
    word_split = word.chars
    word_split.each do |char|
      puts char if vowels.include?(char)
    end
  end
end