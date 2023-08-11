=begin

-----Problem-----
- Given number of switches, return array of lights that are on after n repetitions

Input:
- n number of switches/repetitions
Output:
- array with switches being on

Explicit requirements:
- n number of repetitions
- Each round initially begins at switch 1 and 1 * 2, 1 * 3, etc.
  -Next round begins at 2 and 2 * 2, 2 * 3, etc.
Implicit requirements:
-

-----Examples-----
p switch(5) == [1, 4]
p switch(10) == [1, 4, 9]

Edge cases?

-----Data Structure-----
Hash to track switch number and if on/off
Intermediate will need counter to track what # repetition it is on
Output will be array of all hashes with value = on


-----Algorithm-----
Counter = 1 until counter = n
Index to track size of hash switches
Starting at counter, switch (change value in hash to opposite) counter, counter * 2, etc. stopping at when the switch to be changed is at an index > n switches
  Increment counter and repeat
After n repetitions, find all on switches and return in an array


=end

def switch(n)
  lights = []
  counter = 1
  hsh = Hash.new(false)

  loop do
    multiple = 1
    loop do
      switch = counter
      switch *= multiple
      break if switch > n

      hsh[switch] = !hsh[switch]
      multiple += 1
    end
    counter += 1
    break if counter > n
  end
  hsh.each do |key, val|
    if val == true
      lights << key
    end
  end
  lights
end

p switch(5) == [1, 4]
p switch(10) == [1, 4, 9]
p switch(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]