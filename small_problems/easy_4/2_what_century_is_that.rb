def century(year)
  century_red = year / 100 + 1
  if year % 1000 == 0
    century_red -= 1
  end
  century_str = century_red.to_s
  

  if century_red % 10 == 1 && century_red % 100 != 11
    century_str << 'st'
  elsif century_red % 10 == 2 && century_red % 100 != 12
    century_str << 'nd'
  elsif century_red % 10 == 3 && century_red % 100 != 13
    century_str << 'rd'
  else
    century_str << 'th'
  end

end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'