flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

idx = -1
flintstones.each_with_index do |name, index|
  if name.slice(0, 2) == 'Be' && idx == -1
    idx = index
  end
end

p idx