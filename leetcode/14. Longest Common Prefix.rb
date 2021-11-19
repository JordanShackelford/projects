# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    return '' if strs.empty?
  prefix = strs[0]
  (1...strs.size).each do |i|
    while !strs[i].start_with?(prefix)
      prefix = prefix[0...-1]
    end
  end
  prefix
end