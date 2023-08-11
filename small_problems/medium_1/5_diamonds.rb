=begin

-----Problem-----
- Display a 4 pointed diamond in n x n grid

Input:
- n, which is the n x n grid size
Output:
- printed diamond shape

Explicit requirements:
- n is odd integer
- diamond will be 4 pointed
Implicit requirements:
- n can be 1 (one star)

-----Examples-----

Edge cases?
n = 1 is only one asterisk
-----Data Structure-----
input is integer



-----Algorithm-----
Determine half which will be full length row (eg. n = 9, half will be 5th row, (n+1)/2)
Start a counter to count rows
Loop
  Print out blanks up to half column (eg. n = 9, counter = 1, need 4 blanks, half - counter)
    then asterisk based on counter (eg. counter = 2, print 3, counter = 3, print 5 => (counter - 1) * 2 + 1)
  Repeat up to half row, counter = half
  Then do same but decrement counter
Break loop when counter goes back to 1

=end

def diamond(n)
  if n == 1
    puts '*'
  else
    half = (n + 1) / 2
    counter = 1
    loop do
      puts (" " * (half - counter)) + ("*" * ((counter - 1) * 2 + 1))
      counter += 1
      break if counter > half
    end
    counter -= 1
    loop do
      puts (" " * (half - counter)) + ("*" * ((counter - 1) * 2 + 1))
      counter -= 1
      break if counter < 1
    end
  end
end

diamond(1)
diamond(3)
diamond(9)