# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}

def get_height(root)
  return 0 if root.nil?
  left = get_height(root.left)
  right = get_height(root.right)
  return -1 if left == -1 || right == -1
  return -1 if left - right > 1 || right - left > 1
  return [left, right].max + 1
end

def is_balanced(root)
    return true if root.nil?
    left_height = get_height(root.left)
    right_height = get_height(root.right)
    return false if (left_height - right_height).abs > 1
    is_balanced(root.left) && is_balanced(root.right) 
end