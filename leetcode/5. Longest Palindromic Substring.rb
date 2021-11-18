# @param {String} s
# @return {String}
def longest_palindrome(s)
    return s if s.length <= 1
    longest = ""
    s.each_char.with_index do |char, index|
      left = index
      right = index
      while left >= 0 && right < s.length && s[left] == s[right]
        left -= 1
        right += 1
      end
      if (right - left - 1) > longest.length
        longest = s[left + 1..right - 1]
      end
      left = index
      right = index + 1
      while left >= 0 && right < s.length && s[left] == s[right]
        left -= 1
        right += 1
      end
      if (right - left - 1) > longest.length
        longest = s[left + 1..right - 1]
      end
    end
    longest
  end