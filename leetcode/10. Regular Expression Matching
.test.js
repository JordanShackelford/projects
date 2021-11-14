/**
 * @param {string} s
 * @param {string} p
 * @return {boolean}
 */
 var isMatch = function(s, p) {
    let dp = Array(s.length+1).fill(false).map(()=>Array(p.length+1).fill(false));
    dp[0][0] = true;
    for(let i = 0; i < p.length; i++){
        if(p[i] === '*' && dp[0][i-1]){
            dp[0][i+1] = true;
        }
    }
    for(let i = 1; i <= s.length; i++){
        for(let j = 1; j <= p.length; j++){
            if(p[j-1] === '.'){
                dp[i][j] = dp[i-1][j-1];
            }else if(p[j-1] === s[i-1]){
                dp[i][j] = dp[i-1][j-1];
            }else if(p[j-1] === '*'){
                dp[i][j] = dp[i][j-2] || (dp[i-1][j] && (p[j-2] === s[i-1] || p[j-2] === '.'));
            }
        }
    }
    return dp[s.length][p.length];
};

/*
Runtime: 92 ms, faster than 86.50% of JavaScript online submissions for Regular Expression Matching.
Memory Usage: 42.6 MB, less than 44.26% of JavaScript online submissions for Regular Expression Matching.
*/