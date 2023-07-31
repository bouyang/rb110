DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(int)
  result = ''
  int.digits.each do |digit|
    result.prepend(DIGITS[digit])
  end
  result
end

def signed_integer_to_string(int)
  result = ''
  if int < 0
    result << '-'
    int = int * -1
  elsif int > 0
    result << '+'
  end
  result << integer_to_string(int)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'