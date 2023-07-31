DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(str)
  if !DIGITS.include?(str[0])
    sign = str[0]
    str.delete!(sign)
  end

  number = 0
  
  digitize = str.chars.map do |char|
    DIGITS[char]
  end
  
  digitize.each do |digit|
    number = number * 10 + digit
  end

  number = number * -1 if sign == '-'
  number
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100