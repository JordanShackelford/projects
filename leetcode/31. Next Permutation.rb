# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def next_permutation(nums)
  i = nums.length - 2
while i >= 0
if nums[i] < nums[i+1]
j = nums.length - 1
while j >= 0
  if nums[i] < nums[j]
    nums[i], nums[j] = nums[j], nums[i]
    nums[i+1..-1] = nums[i+1..-1].reverse
    return
  end
  j -= 1
end
end
i -= 1
end
nums.reverse!
end