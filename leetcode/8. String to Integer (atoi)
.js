var myAtoi = function(s) {
    if (s.length === 0) {
  return 0;
}

let i = 0;
while (s[i] === ' ') {
  i++;
}

let num = 0;
let sign = 1;
if (s[i] === '+' || s[i] === '-') {
  sign = s[i] === '+' ? 1 : -1;
  i++;
}

while (s[i] && s[i] >= '0' && s[i] <= '9') {
  num = num * 10 + (s[i] - '0');
  if (num * sign >= 2147483647) {
    return 2147483647;
  }
  if (num * sign <= -2147483648) {
    return -2147483648;
  }
  i++;
}

return num * sign;
}

/*
Runtime: 84 ms, faster than 93.18% of JavaScript online submissions for String to Integer (atoi).
Memory Usage: 41.8 MB, less than 19.56% of JavaScript online submissions for String to Integer (atoi).
*/