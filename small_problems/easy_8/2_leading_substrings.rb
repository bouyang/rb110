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

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']