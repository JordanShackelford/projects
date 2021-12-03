# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    return 1 if n == 1
  return 2 if n == 2

  a = 1
  b = 2
  c = 0

  (3..n).each do |i|
    c = a + b
    a = b
    b = c
  end

  c
end