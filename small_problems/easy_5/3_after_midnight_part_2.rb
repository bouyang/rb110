def after_midnight(offset)
  time = offset.split(':')
  hours = time[0].to_i
  mins = time[1].to_i

  result = hours * 60 + mins
  loop do
    break if result < 1440
    result -= 1440
  end
  result
end

def before_midnight(offset)
  time = offset.split(':')
  hours = time[0].to_i
  mins = time[1].to_i

  hours_before = 24 - hours
  mins_before = 60 - mins

  if mins_before > 0
    hours_before -= 1
  end
  
  result = hours_before * 60 + mins_before
  loop do
    break if result < 1440
    result -= 1440
  end
  result
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0