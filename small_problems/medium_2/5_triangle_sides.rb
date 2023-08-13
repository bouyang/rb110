=begin

-----Problem-----
-Valid triangle: sum of lengths of two shortest > length of longest. Take 3 sides' lengths and returns a symbol for each type or invalid

Input:
- 3 numbers of each representing a side
Output:
- symbol of which triangle type it is or invalid

Explicit requirements:
- length > 0 to be valid
- two shortest sum > longest side

Implicit requirements:
- sides can be floats
- sides can be equal lengths

-----Examples-----

Edge cases?

-----Data Structure-----
Number to store length of two shortest sides -> may need to put sides in an array


-----Algorithm-----
Store lengths into an array
Find two shortest sides
  - Could use .min method
  - Here since 0 would be smallest, can check for > 0 here
Compare two shortest sides' sum to longest to check for validity
If valid, equilateral can check if shortest 2 are also equal to longest
  Isosceles would have the 2 shortest as the equal length ones, so can check if those are equal
  Scalene can check if the 2 shortest are different then all would be different
Return a symbol depending on which triangle type it is

=end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  short1, short2 = sides.min(2)
  long1 = sides.max

  if short1 == 0 || short2 == 0 || (short1 + short2 < long1)
    :invalid
  elsif sides.count(short1) == 3
      :equilateral
  elsif sides.count(short1) == 2 || sides.count(long1) == 2
      :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid