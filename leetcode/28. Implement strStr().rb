# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    return 0 if needle.empty?
    needle_len = needle.length
    haystack_len = haystack.length
    (0...haystack_len).each do |i|
        return i if haystack[i...i+needle_len] == needle
    end
    -1
end