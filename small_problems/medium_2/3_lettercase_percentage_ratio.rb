=begin

-----Problem-----
- Take a string, return a hash that has 3 entries: percent chars in string that are lowercase, %chars that are uppercase, %chars that are neither

Input:
-string
Output:
-hash of lowercase, uppercase, and neither characters in percentage

Explicit requirements:
-string will contain at least one character
-string can be some combo of upper, lower, and other
Implicit requirements:
-spaces and numbers and non-alphanumeric count as neither

-----Examples-----
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
Edge cases?

-----Data Structure-----
array of characters to read each character
integer maybe to store number of each LC, UC, neither, Or maybe just a hash
Store absolute number of characters in a hash at first, then convert to percentage at end


-----Algorithm-----
Initialize hash for LC, UC, and Neither
Convert input string to array of characters
Iterate through each character and determine if LC, UC, or neither
  - char = char.downcase, upcase, or no effect
  - Store the answer in the hash
Convert hash values to percentage based on total number of characters
Return the hash


=end

def letter_percentages(str)
  result = {lowercase: 0, uppercase: 0, neither: 0}

  str.chars.each do |letter|
    if letter.upcase == letter.downcase
      result[:neither] += 1
    elsif letter == letter.upcase
      result[:uppercase] += 1
    else
      result[:lowercase] += 1
    end
  end

  result.each do |key, val|
    result[key] = (val / (str.size).to_f * 100).round(1)
  end

  result
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

p letter_percentages('abcdefGHI')