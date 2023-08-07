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

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]