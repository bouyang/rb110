[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# [1, nil, nil] but also outputs 2 and 3