def backtrack(candidates, target, index, path, res)
  if target == 0
    res << path.clone
  elsif target > 0
    (index...candidates.length).each do |i|
      path << candidates[i]
      backtrack(candidates, target - candidates[i], i, path, res)
      path.pop
    end
  end
end

# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum(candidates, target)
    res = []
    candidates.sort!
    backtrack(candidates, target, 0, [], res)
    res
end