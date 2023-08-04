def ascii_value(str)
  val = 0
  str.chars.each do |char|
    val += char.ord
  end
  val
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0