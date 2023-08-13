=begin

P
- 3x3 matrix can be represented by an array of 3 elements each of which is an array of 3 elements
- Transpose by exchanging the columns and rows
- Do not mutate original array
- Only integers as elements?
- Will be 3x3
- Cannot use transpose or matrix

E
Given

D
Input is array of arrays
May need to extract each element into the new array

A
[0, 0] => [0, 0]
[0, 1] => [1, 0]
[0, 2] => [2, 0]

[1, 0] => [0, 1]
.
.

[2, 0] => [0, 2]

Initialize new array of 3x3
Iterate through each element of array row
  Iterate through each element of each row
    Whatever row, col indicies that element is, change the new array's to col, row indicies
Return new array

=end

def transpose(mat)
  new_mat = [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]

  mat.each_with_index do |row, idx_row|
    row.each_with_index do |col, idx_col|
      new_mat[idx_col][idx_row] = mat[idx_row][idx_col]
    end
  end

  p new_mat

end


matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]