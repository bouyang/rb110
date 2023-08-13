=begin

-----Problem-----
- Take a string, determine if all parentheses are balanced, ( and ) are balanced

Input:
- String with parentheses
Output:
- True or False depending on if they are balanced

Explicit requirements:
- To be balanced, parentheses must occur in matching () pairs
Implicit requirements:
- If ) appears first, it is false
- Many (( can appear in a row before a ) and it is ok

-----Examples-----
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false
Edge cases?

-----Data Structure-----
Input will be string, can convert to array and iterate through every char to check for parenthesis
Counter as an int to determine which one comes up and if it is balanced


-----Algorithm-----
Initialize counter integer
Convert string to array of chars
Iterate through each char and find parentheses
  Based on implicit condition, if ) appears before a ( has occured, then it is false
  But multiple ( can appear and it is ok
  Increment counter when ( appears and decrease when ) appears
    If counter goes negative, then returns false
  At the end, counter should be 0
Check if balanced ( and )
Return true or false


=end
def balanced?(str)
  counter = 0
  str.chars.each do |character|
    counter += 1 if character == '('
    counter -= 1 if character == ')'
    return false if counter < 0
  end
  return true if counter == 0
  false
end
    

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('What ())(is() up') == false