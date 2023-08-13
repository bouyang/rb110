=begin

-----Problem-----
- Determine number of Fri 13ths in a year

Input:
- Year as an integer
Output:
- Number of Fri 13ths in that year

Explicit requirements:
- Year is > 1752
Implicit requirements:
-

-----Examples-----
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

Edge cases?

-----Data Structure-----
Store number of fridays in a counter


-----Algorithm-----
Initialize variable to count for number of fridays
In that year, iterate through each 13th and determine if it is a friday and increment count
Return the number of Fri 13s


=end
require 'Date'

def friday_13th(year)
  count = 0
  (1..12).each do |month|
    count += 1 if Date.civil(year, month, 13).friday?
  end
  count
end


p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2