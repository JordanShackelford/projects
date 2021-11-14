var isPalindrome = function(x) {
    if (x < 0) return false;
    if (x < 10) return true;
    let str = x.toString();
    let len = str.length;
    for (let i = 0; i < len / 2; i++) {
        if (str[i] !== str[len - 1 - i]) return false;
    }
    return true;
};

/*
Runtime: 188 ms, faster than 65.36% of JavaScript online submissions for Palindrome Number.
Memory Usage: 48.4 MB, less than 37.25% of JavaScript online submissions for Palindrome Number.
*/