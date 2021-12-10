def is_mirror(root1, root2)
    return true if root1.nil? && root2.nil?
    return false if root1.nil? || root2.nil?
    return false if root1.val != root2.val
    is_mirror(root1.left, root2.right) && is_mirror(root1.right, root2.left)
  end
  
  def is_symmetric(root)
      return true if root.nil?
      return true if root.left.nil? && root.right.nil?
      return false if root.left.nil? || root.right.nil?
      return false if root.left.val != root.right.val
      
      is_mirror(root.left, root.right) 
  end