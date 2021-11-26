# @param {Integer} dividend
# @param {Integer} divisor
# @return {Integer}
def divide(dividend, divisor)
    if divisor == 0 || (dividend == -2147483648 && divisor == -1)
    return 2147483647
  end
  sign = (dividend < 0) ^ (divisor < 0) ? -1 : 1
  dividend = dividend.abs
  divisor = divisor.abs
  quotient = 0
  while dividend >= divisor
    temp = divisor
    multiple = 1
    while dividend >= temp
      dividend -= temp
      quotient += multiple
      multiple <<= 1
      temp <<= 1
    end
  end
  return sign * quotient
end