# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    rows = Array.new(9) { Array.new(9, 0) }
  cols = Array.new(9) { Array.new(9, 0) }
  boxes = Array.new(9) { Array.new(9, 0) }
  board.each_with_index do |row, i|
    row.each_with_index do |val, j|
      next if val == '.'
      if rows[i][val.to_i - 1] == 0
        rows[i][val.to_i - 1] = 1
      else
        return false
      end
      if cols[j][val.to_i - 1] == 0
        cols[j][val.to_i - 1] = 1
      else
        return false
      end
      box_index = (i / 3) * 3 + (j / 3)
      if boxes[box_index][val.to_i - 1] == 0
        boxes[box_index][val.to_i - 1] = 1
      else
        return false
      end
    end
  end
  true
end