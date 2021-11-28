# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  left = 0
  right = nums.size - 1
  while left < right
      mid = left + (right - left) / 2
      if nums[mid] > nums[right]
          left = mid + 1
      else
          right = mid
      end
  end
  start = left
  left = 0
  right = nums.size - 1
  while left <= right
      mid = left + (right - left) / 2
      pivot = (start + mid) % nums.size
      if nums[pivot] == target
          return pivot
      elsif nums[pivot] > target
          right = mid - 1
      else
          left = mid + 1
      end
  end
  -1
end