def gen_digit
  digit = rand(16)
  case digit
  when 10
    digit = 'a'
  when 11
    digit = 'b'
  when 12
    digit = 'c'
  when 13
    digit = 'd'
  when 14
    digit = 'e'
  when 15
    digit = 'f'
  end
  digit.to_s
end

def uuid
  uuid = ''
  8.times do
    uuid << gen_digit
  end
  uuid << '-'

  3.times do
    4.times do
      uuid << gen_digit
    end
    uuid << '-'
  end
  uuid << '-'
  
  12.times do
    uuid << gen_digit
  end
  uuid
end

p uuid