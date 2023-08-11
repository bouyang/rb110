=begin

-----Problem-----
- 

Input:
-
Output:
-

Explicit requirements:
-
Implicit requirements:
-

-----Examples-----

Edge cases?

-----Data Structure-----



-----Algorithm-----



=end

def minilang(command)
  stack = []
  register = [0]

  command.split.each do |com|
    case com
    when 'PUSH'
      then
      stack << register[0]
    when 'ADD'
      then
      register[0] = stack.pop + register[0]
    when 'SUB'
      then
      register[0] =  register[0] - stack.pop
    when 'MULT'
      then
      register[0] = stack.pop * register[0]
    when 'DIV'
      then
      register[0] = register[0] / stack.pop
    when 'MOD'
      then
      register[0] = register[0] % stack.pop
    when 'POP'
      then
      register[0] = stack.pop
    when 'PRINT'
      then
      puts register[0]
    else
      register[0] = com.to_i
    end
  end

  
end


minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)