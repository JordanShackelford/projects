=beginning
Given a string s, find the length of the longest substring without repeating characters.
=end

def length_of_longest_substring(s)
    hash = {}
    start = 0
    longest = 0
    s.each_char.with_index do |char, index|
      if hash.has_key?(char)
        start = [hash[char] + 1, start].max
      end
      hash[char] = index
      longest = [longest, index - start + 1].max
    end
    longest
  end