def time_of_day(offset)
  result = ''
  if offset == 0
    return '00:00'
  elsif offset > 0
    hours = offset / 60
    mins = offset % 60
    loop do
      break if hours < 24
      hours -= 24
    end
    if hours < 10
      result << "0#{hours}:"
    else
      result << "#{hours}:"
    end
    if mins < 10
      result << "0#{mins}"
    else
      result << "#{mins}"
    end
  else
    offset *= -1
    hours = offset / 60
    mins = offset % 60
    loop do
      break if hours < 24
      hours -= 24
    end
    hours = 24 - hours

    if mins > 0
      hours -= 1
    end

    mins = 60 - mins

    if hours < 10
      result << "0#{hours}:"
    else
      result << "#{hours}:"
    end
    if mins < 10
      result << "0#{mins}"
    else
      result << "#{mins}"
    end
  end
  result
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"