=beginning
Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
The overall run time complexity should be O(log (m+n)).
=end

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    nums = nums1 + nums2
    nums.sort!
    if nums.length.odd?
      nums[nums.length / 2]
    else
      (nums[nums.length / 2] + nums[nums.length / 2 - 1]) / 2.0
    end
  end