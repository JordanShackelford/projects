def is_match(s, p)
  dp = Array.new(s.size+1) {Array.new(p.size+1, false)}
  dp[0][0] = true
  (1...p.size+1).each do |i|
    if p[i-1] == '*'
      dp[0][i] = dp[0][i-2]
    end
  end
  (1...s.size+1).each do |i|
    (1...p.size+1).each do |j|
      if p[j-1] == '*'
        dp[i][j] = dp[i][j-2] || (dp[i-1][j] && (s[i-1] == p[j-2] || p[j-2] == '.'))
      else
        dp[i][j] = dp[i-1][j-1] && (s[i-1] == p[j-1] || p[j-1] == '.')
      end
    end
  end
  dp[s.size][p.size]
end