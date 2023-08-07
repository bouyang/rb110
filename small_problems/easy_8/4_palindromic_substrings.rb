def leading_substrings(str)
  ss_arr = []
  length = 1
  loop do
    ss_arr << str[0, length]
    length += 1
    break if length > str.length
  end
  ss_arr
end

def substrings(str)
  all_ss = []
  0.upto(str.length - 1) do |idx|
    all_ss << leading_substrings(str[idx, str.length - idx])
  end
  all_ss.flatten
end

def palindromes(str)
  all_ss = substrings(str)

  all_ss.select do |word|
    word == word.reverse && word.length > 1
  end
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]