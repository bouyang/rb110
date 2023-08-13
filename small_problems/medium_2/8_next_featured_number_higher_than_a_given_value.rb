=begin

-----Problem-----
-Featured Numner (FN) odd number that is multiple of 7, digits occur exactly once each

Input:
- Given number
Output:
- Next featured number that is > argument

Explicit requirements:
- Return is next FN that is > argument (not the argument)
- If there is no next FN, return error message
Implicit requirements:
- Numbers higher than 1_023_456_987 will have no next FN
  - Although this is likely not a FN, numbers higher than 9_876_543_210 will have no higher FN so we can stop the loop here

-----Examples-----
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

Edge cases?

-----Data Structure-----
Will need to put digits into an array so can check if they appear exactly once


-----Algorithm-----
Given num, iterate up in a loop

Check odd
Check multiple of 7
Check if digits appear exactly once
  Split number into digits and check .uniq = digits

If all true, return it
If not, go to next number
If number > 9_876_543_210 then can return that there is no valid one


=end

def featured(num)
  num += 1
  loop do
    if num.odd? && (num % 7 == 0) && (num.digits == num.digits.uniq)
      return num
    else
      num += 1
    end
    break if num > 9_876_543_210
  end
  return "Invalid"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements