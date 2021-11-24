def merge_k_lists(lists)
    return nil if lists.empty?
    return lists[0] if lists.size == 1
    return merge_two_lists(lists[0], merge_k_lists(lists[1..-1]))
end

def merge_two_lists(l1, l2)
return l1 if l2.nil?
return l2 if l1.nil?
if l1.val < l2.val
  el1 = l1
  el2 = l2
  else
      el1 = l2
      el2 = l1
  end
  el1.next = merge_two_lists(el1.next, el2)
  return el1
end
