/**
 * @param {string} s
 * @return {number}
 */
 var lengthOfLongestSubstring = function(s) {
    s = s.split("");
    var startingIndex = 0;
    var endingIndex = 1;
    var strings = [];
    var currentStr = "";
    for(var i = 0; i < s.length; i++){
        //check if the next character is included in our current string
        if(currentStr.includes(s[endingIndex])){
            strings += s.join(startingIndex, endingIndex);
            startingIndex = endingIndex;
        } else {
            endingIndex += 1;
        }
    }
    return strings;
};