def max_sub_array(nums)
    return nums[0] if nums.size == 1
max = nums[0]
sum = 0
nums.each do |num|
  sum += num
  max = sum if sum > max
  sum = 0 if sum < 0
end
max
end