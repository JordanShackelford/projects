# @param {String} s
# @return {Integer}
def roman_to_int(s)
    roman = {
'I' => 1,
'V' => 5,
'X' => 10,
'L' => 50,
'C' => 100,
'D' => 500,
'M' => 1000
}
sum = 0
i = 0
while i < s.length
if i + 1 < s.length && roman[s[i]] < roman[s[i+1]]
sum += roman[s[i+1]] - roman[s[i]]
i += 2
else
sum += roman[s[i]]
i += 1
end
end
sum
end