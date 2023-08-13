=begin
P
- Matrix is represented by array of arrays
- Rotate a matrix 90 degrees

E
Given

D
New array to store new values when rotated

A
0, 0 => 0, 2
0, 1 => 1, 2
0, 2 => 2, 2

1, 0 => 0, 1
1, 1, => 1, 1
1, 2 => 2, 1

2, 0 => 0, 0
2, 1 => 1, 0
2, 2 => 2, 0


0, 0 => 0, 1
0, 1 => 1, 1
0, 2 => 2, 1

1, 0 => 0, 0
1, 1 => 1, 0
1, 2 => 2, 0


Pattern: new: row is 0...rows
              cols is highest index for cols then -1 for each new row

Initialize new array of size rows = elements in first row
                              elements (cols) = rows in original array

for arr.first.size, make new row
  for arr.size, add new element

Take all elements of original array and flatten.

Iterate starting at i = (arr.size - 1)
    Iterate 0..(arr.first.size - 1)
      Set new_arr at this index to the next thing up in the flattened array
      Move to next index of flattened array

Return new array
=end

def rotate90(mat)
  mat_rows = mat.size
  mat_cols = mat.first.size

  flat_mat = mat.flatten
  idx = 0
  new_arr = []

  1.upto(mat_cols) do
    new_arr << []
  end

  new_arr.each_with_index do |row, i|
    0.upto(mat_rows - 1) do |ele|
      new_arr[i][ele] = 0
    end
  end

  (mat_rows - 1).downto(0) do |second|
    0.upto(mat_cols - 1) do |first|
      new_arr[first][second] = flat_mat[idx]
      idx += 1
    end
  end

  p new_arr
  new_arr
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]



  matrix1 = [
    [1, 5, 8],
    [4, 7, 2],
    [3, 9, 6]
  ]
  
  matrix2 = [
    [3, 7, 4, 2],
    [5, 1, 0, 8]
  ]
  
  new_matrix1 = rotate90(matrix1)
  new_matrix2 = rotate90(matrix2)
  new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))
  
  p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
  p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
  p new_matrix3 == matrix2