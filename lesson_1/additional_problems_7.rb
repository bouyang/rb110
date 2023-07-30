statement = "The Flintstones Rock"

freq = Hash.new{0}

statement = statement.chars

statement.each do |char|
  freq[char] += 1
end

p freq