{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# return value of map is [nil, 'bear']. If the 'if' statement does not execute, returns nil