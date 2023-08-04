def cleanup(str)
  result = ''
  no_punc = str.chars.map do |char|
    if char == char.upcase
      char = ' '
    else
      char
    end
  end
  no_punc.each_with_index do |char, index|
    if index == 0
      result << char
    else
      result << char unless (char == ' ' && no_punc[index - 1] == ' ')
    end
  end
  result
end

p cleanup("---what's my +*& line?") == ' what s my line '