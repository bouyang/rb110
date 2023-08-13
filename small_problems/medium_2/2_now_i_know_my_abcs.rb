=begin

-----Problem-----
- From letter block of 2 chars, see if you can spell a word using a max of 1 letter from each block

Input:
- word to check
Output:
- whether you can spell it or not using the letter block

Explicit requirements:
- Each block has 2 letters
- Can only use 1 letter from any given block once

Implicit requirements:
- Given in uppercase, but lowercase words can also be given

-----Examples-----
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
Edge cases?

-----Data Structure-----
Might need to have an array that stores index of each letter block and can change boolean value when a letter in that index is used
Array to store both letters that is analogous to the boolean checker array



-----Algorithm-----
Create array that has each letter block
Create array of booleans to check if a letter is used or not

From input string, change to upcase, then split each character and iterate through each character
  For each character, check where it exists in the array of letter blocks, then check the boolean of the boolean array
    If it has been used before, return false, otherwise change the boolean value for future letters
After all letters have been iterated, return true


=end
LET_BL = [['B', 'O'], ['X', 'K'], ['D', 'Q'], ['C', 'P'], ['N', 'A'], ['G', 'T'], ['R', 'E'], ['F', 'S'], ['J', 'W'], ['H', 'U'], ['V', 'I'], ['L', 'Y'], ['Z', 'M']]

def block_word?(str)
  bool_arr = [false, false, false, false, false, false, false, false, false, false, false, false, false, false]

  str.upcase.chars.each do |char|
    LET_BL.each_with_index do |letters, idx|
      if letters.include?(char)
        if bool_arr[idx] == true
          return false
        else
          bool_arr[idx] = true
        end
      end
    end
  end
  return true
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true