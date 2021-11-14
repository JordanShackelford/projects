var reverse = function(x) {
    let result = 0;
    let isNegative = false;
    if(x < 0){
        isNegative = true;
        x = -x;
    }
    while(x > 0){
        result = result * 10 + x % 10;
        x = Math.floor(x / 10);
    }
    if(result > Math.pow(2, 31) - 1){
        return 0;
    }
    return isNegative ? -result : result;
};

/*
Runtime: 92 ms, faster than 62.20% of JavaScript online submissions for Reverse Integer.
Memory Usage: 40.5 MB, less than 50.43% of JavaScript online submissions for Reverse Integer.
*/