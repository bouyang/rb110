def num_it(str)
  case str
  when '0' then 0
  when '1' then 1
  when '2' then 2
  when '3' then 3
  when '4' then 4
  when '5' then 5
  when '6' then 6
  when '7' then 7
  when '8' then 8
  when '9' then 9
  end
end

def string_to_integer(str)
  number = 0

  (1..str.length).each do |i|
    if i == 1
      number += num_it(str[-i])
    else
      number += num_it(str[-i]) * (10 ** (i - 1))
    end
  end
  number
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570