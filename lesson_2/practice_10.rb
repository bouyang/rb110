arr1 = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

arr2 = arr1.map do |element|
  element.map do |key, value|
    value += 1
    element[key] = value
  end
  element
end

p arr2