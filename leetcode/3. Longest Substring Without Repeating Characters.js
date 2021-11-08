/**
 * @param {string} s
 * @return {number}
 */
 var lengthOfLongestSubstring = function(s) {
    s = s.split("");
    var startingIndex = 0;
    var endingIndex = 1;
    var substrings = []
    var currentStr = []
    for(var i = 0; i < s.length; i++){
        if(currentStr.includes(s[i])){
            substrings.push(currentStr);
            currentStr = [];
        } else {
            currentStr.push(s[i]);
        }
    }
    console.log(substrings);
};