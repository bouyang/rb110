=begin
P
- Display an 8 pointed start in n x n grid, n is odd and the argument
- n >= 7

Implicit:
- For every n+2, increase * in the spoke by 1
- n = number of * in the center row

======
E
star(7)

=====
D
May need variables to count lengths to make code cleaner

=====
A

eg. star 7
  * sp sp * sp sp *
  sp * sp * sp *
  sp sp ***
  7 *

eg. star 9
  * sp sp sp * sp sp sp *
  sp * sp sp * sp sp *
  sp sp * sp * sp *
  sp sp sp ***
  9 *

inter-star space = 7 -> 2
                  9 -> 3
                  (n - 7) / 2 + 2
next row is ISS - 1 until ISS = 0 -> row of n

rows until row of n = 7 -> 2
                      9 -> 3
                      11 -> 4
                      (n - 7) / 2 + 2

Initialize 2 variables: ISS and row and set to value calculated above
Loop starting at 0 up to row |x|
  Print (X spaces) *, ISS, *, ISS, *
  Repeat until Row == x
  Print n *
New Loop but starting count row = x and down until 0



=end

def star(n)
  interstar_space = (n - 7) / 2 + 2
  rows = (n - 7) / 2 + 2

  (0..rows).each do |x|
    puts (' ' * x) + "*" + (' ' * interstar_space)+ "*" + (' ' * interstar_space)+ "*"
    interstar_space -= 1
  end

  interstar_space += 1

  puts '*' * n

  rows.downto(0) do |x|
    puts (' ' * x) + "*" + (' ' * interstar_space)+ "*" + (' ' * interstar_space)+ "*"
    interstar_space += 1
  end

end

star(7)

puts ''

star(9)