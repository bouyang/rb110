ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# old = []

# ages.each do |name, age|
#   old.push(name) if age > 100
# end

# old.each { |name| ages.delete(name) }

# p ages

ages.select! do |_, age|
  age < 100
end

p ages