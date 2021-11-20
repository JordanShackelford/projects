def three_sum_closest(nums, target)
    nums.sort!
  closest_sum = nums[0] + nums[1] + nums[2]
  (0...nums.size).each do |i|
    left = i + 1
    right = nums.size - 1
    while left < right
      sum = nums[i] + nums[left] + nums[right]
      if sum > target
        right -= 1
      elsif sum < target
        left += 1
      else
        return sum
      end
      if (sum - target).abs < (closest_sum - target).abs
        closest_sum = sum
      end
    end
  end
  closest_sum
end