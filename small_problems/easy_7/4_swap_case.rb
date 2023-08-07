def swapcase(str)
  new_str = str.chars.map do |letter|
    if letter.downcase == letter
      letter.upcase
    else
      letter.downcase
    end
  end.join
  new_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'