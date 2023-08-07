def repeater(str)
  str.chars.map do |letter|
    letter * 2
  end.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''