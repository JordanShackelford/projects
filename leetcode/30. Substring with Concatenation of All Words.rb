    # @param {String} s
    # @param {String[]} words
    # @return {Integer[]}
    def find_substring(s, words)
      words_hash = {}
words.each { |word|
if words_hash.has_key?(word)
words_hash[word] += 1
else
words_hash[word] = 1
end
}
word_size = words[0].size
words_size = words.size
result = []
s.each_char.with_index { |char, i|
if i + words_size * word_size > s.size
break
end
word_hash = {}
words_hash.each_key { |word|
word_hash[word] = 0
}
(0..words_size - 1).each { |j|
word = s[i + j * word_size, word_size]
if words_hash.has_key?(word)
  word_hash[word] += 1
  if word_hash[word] > words_hash[word]
    break
  end
else
  break
end
}
if word_hash == words_hash
result << i
end
}
return result
end