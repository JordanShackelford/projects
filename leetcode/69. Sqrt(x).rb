# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  return 0 if x == 0
  left, right = 0, x
  while left <= right
      mid = (left + right) / 2
      if mid * mid <= x && (mid + 1) * (mid + 1) > x
          return mid
      elsif mid * mid > x
          right = mid - 1
      else
          left = mid + 1
      end
  end
end