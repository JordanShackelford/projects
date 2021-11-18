def convert(s, num_rows)
    return s if num_rows == 1
    rows = Array.new(num_rows) { Array.new }
    index = 0
    row = 0
    down = true
    s.each_char do |char|
      rows[row] << char
      if down
        row += 1
      else
        row -= 1
      end
      if row == num_rows - 1
        down = false
      elsif row == 0
        down = true
      end
    end
    rows.flatten.join
end