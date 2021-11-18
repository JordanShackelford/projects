def add_two_numbers(l1, l2)
    return l2 if l1.nil?
    return l1 if l2.nil?
    result = ListNode.new(0)
    head = result
    carry = 0
    while !l1.nil? || !l2.nil?
      if !l1.nil?
        carry += l1.val
        l1 = l1.next
      end
      if !l2.nil?
        carry += l2.val
        l2 = l2.next
      end
      head.next = ListNode.new(carry % 10)
      head = head.next
      carry /= 10
    end
    if carry > 0
      head.next = ListNode.new(carry)
    end
    result.next
  end