def swap(str)
  str_arr = str.split(' ')

  line = str_arr.map do |word|
    chars = word.chars
    temp = chars[0]
    chars[0] = chars[-1]
    chars[-1] = temp
    result = chars.join
  end
  line = line.join(' ')
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'