/**
 * @param {string} s
 * @param {number} numRows
 * @return {string}
 */
 var convert = function(s, numRows) {
    if (numRows === 1) {
        return s;
    }
    var result = [];
    var row = 0;
    var step = 1;
    for (var i = 0; i < s.length; i++) {
        if (row === 0) {
            step = 1;
        } else if (row === numRows - 1) {
            step = -1;
        }
        result[row] = result[row] || '';
        result[row] += s[i];
        row += step;
    }
    return result.join('');
};

/* Runtime: 104 ms, faster than 68.62% of JavaScript online submissions for Zigzag Conversion.
Memory Usage: 43.2 MB, less than 63.72% of JavaScript online submissions for Zigzag Conversion. */