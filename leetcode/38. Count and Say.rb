# @param {Integer} n
# @return {String}
def count_and_say(n)
  return "1" if n == 1
  last_say = count_and_say(n-1)
  say = ""
  i = 0
  while i < last_say.length
    count = 1
    while i < last_say.length - 1 && last_say[i] == last_say[i+1]
      count += 1
      i += 1
    end
    say << count.to_s + last_say[i]
    i += 1
  end
  say
end