=beginning
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
 

Example 1:

Input: s = "()"
Output: true
Example 2:

Input: s = "()[]{}"
Output: true
Example 3:

Input: s = "(]"
Output: false
Example 4:

Input: s = "([)]"
Output: false
Example 5:

Input: s = "{[]}"
Output: true
 

Constraints:

1 <= s.length <= 104
s consists of parentheses only '()[]{}'.
=end

# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  hash = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }
  s.each_char do |char|
    if hash.keys.include?(char)
      stack.push(char)
    else
      if hash[stack.pop] != char
        return false
      end
    end
  end
  stack.empty?
end