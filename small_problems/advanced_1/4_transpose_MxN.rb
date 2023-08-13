def transpose(mat)
  rows = mat.size
  cols = mat[0].size
  new_mat = []

  1.upto(cols) do
    new_mat << []
  end

  new_mat.each_with_index do |_, idx|
    1.upto(rows) do
      new_mat[idx].push(1)
    end
  end

  mat.each_with_index do |row, idx_row|
    row.each_with_index do |col, idx_col|
      new_mat[idx_col][idx_row] = mat[idx_row][idx_col]
    end
  end

  new_mat

end
 

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]