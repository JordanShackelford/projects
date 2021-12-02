# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  num = digits.join.to_i
num += 1
num.to_s.split("").map(&:to_i)
end