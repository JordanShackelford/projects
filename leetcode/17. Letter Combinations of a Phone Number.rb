def letter_combinations(digits)
    phone = {
        '2' => %w(a b c),
        '3' => %w(d e f),
        '4' => %w(g h i),
        '5' => %w(j k l),
        '6' => %w(m n o),
        '7' => %w(p q r s),
        '8' => %w(t u v),
        '9' => %w(w x y z)
      }
      return [] if digits.empty?
      result = []
      digits.chars.each do |digit|
        result = result.empty? ? phone[digit] : result.product(phone[digit]).map(&:join)
      end
      result
end