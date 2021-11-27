
# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
  stack = []
  max = 0
  s.each_char.with_index do |c, i|
    if c == '('
      stack.push(i)
    else
      if stack.empty?
        stack.push(i)
      else
        max = [max, i - stack.pop].max
      end
    end
  end
  max
end