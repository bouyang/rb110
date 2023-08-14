password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
  password = new_password
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)

=begin
THe password variable initiazlied in line 1 is not accessible in the method set_password and the variable initialized in line 6 password is not the same as the one in line 1.

When the verify_password method is invoked, in line 14 when the if statement tries to evaluate if input == password, there is no local variable password that was initialized inside of the
method and so it will give an error
=end