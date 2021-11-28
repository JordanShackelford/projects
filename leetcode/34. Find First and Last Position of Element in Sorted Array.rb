# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    return [-1, -1] if nums.empty?
left = 0
right = nums.size - 1
while left < right
  mid = (left + right) / 2
  if nums[mid] < target
    left = mid + 1
  else
    right = mid
  end
end
return [-1, -1] if nums[left] != target
left_bound = left
right = nums.size - 1
while left < right
  mid = (left + right + 1) / 2
  if nums[mid] > target
    right = mid - 1
  else
    left = mid
  end
end
return [left_bound, left]
end