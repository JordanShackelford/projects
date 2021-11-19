# @param {Integer[]} height
# @return {Integer}

def max_area(height)
    left = 0
  right = height.size - 1
  max = 0
  while left < right
    area = (right - left) * [height[left], height[right]].min
    max = [max, area].max
    if height[left] < height[right]
      left += 1
    else
      right -= 1
    end
  end
  max
end