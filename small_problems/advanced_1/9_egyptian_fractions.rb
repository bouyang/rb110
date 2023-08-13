=begin

Rational number: number that can be represented as the result of the division between two integers eg 1/3 3/2 22/7
Unit fraction: Rational number where num is 1
Egyption fraction: sum of a series of distinct unit fractions

Every positive rational number can be written as an Egyptian fraction

Write two methods: one takes rational num as argument => array of denoms that are part of an egyptian fraction

Takes an array of nums in the same format => calculates the resulting rational num



A
Initialize an array of egyp denominators
Iterate through every unit fraction and see if it can fit into the current num

  Record the denominator in an array
  Continue until the num == (0)
Return the array

=end

def egyptian(num)
  egypt_denom = []
  denom = 1
  loop do
    if num - Rational(1, denom) < 0
      denom += 1
      next
    else
      egypt_denom << denom
      num -= Rational(1, denom)
      denom += 1
    end
    break if num == 0
  end
  egypt_denom
end

def unegyptian(arr)
  sum = 0
  arr.each do |denom|
    sum += Rational(1, denom)
  end
  sum
end

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)