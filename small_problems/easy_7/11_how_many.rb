def count_occurrences(arr)
  hsh = Hash.new(0)
  arr.each do |ele|
    hsh[ele] += 1
  end
  hsh
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)