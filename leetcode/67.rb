# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
  a = a.to_i(2)
b = b.to_i(2)
(a + b).to_s(2)
end