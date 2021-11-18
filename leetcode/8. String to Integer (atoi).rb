def my_atoi(s)
  s = s.strip
  return 0 if s == ""
  negative = false
  if s[0] == "-"
      negative = true
      s = s[1..-1]
  elsif s[0] == "+"
      s = s[1..-1]
  end
  num = 0
  s.each_char do |char|
      break if char =~ /[^\d]/
      num = num * 10 + char.to_i
  end
  if negative
      num = -num
  end
  if num > 2**31 - 1
      2**31 - 1
  elsif num < -2**31
      -2**31
  else
      num
  end
end