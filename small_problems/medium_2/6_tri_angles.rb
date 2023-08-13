=begin

-----Problem-----
- 3 different triangle types. To be valid, sum of all angles = 180, all angles > 0
- Take 3 angles and return the type of triangle or invalid

Input:
- 3 angle numbers
Output:
- Which triangle it is or if it is invalid

Explicit requirements:
- Angles will be integers
- Angles will be in degrees
Implicit requirements:
- Angles can be same, different, or zero

-----Examples-----
p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
Edge cases?

-----Data Structure-----
Store the angles in an array


-----Algorithm-----
Store angles in an array
Sort the angles to make it easier
Determine validity first by checking if smallest is 0 or if all values add to 180 exactly
Iterate through all angles and count how many are == 90, how many > 90
  Detemrine type of angle this way:
    If 1 == 90 -> right
    If 1 > 90 -> obtuse
    Else -> acute
Return what type by symbol


=end
def triangle(ang1, ang2, ang3)
  angles = [ang1, ang2, ang3].sort

  if angles[0] == 0 || (angles.sum != 180)
    :invalid
  else
    eq90 = 0
    gr90 = 0
    angles.each do |angle|
      if angle == 90
        eq90 += 1
      elsif angle > 90
        gr90 += 1
      end
    end

    return :right if eq90 == 1
    return :obtuse if gr90 == 1
    :acute
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid