/* Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

You can return the answer in any order.

*/

var twoSum = (nums,target) => {
    let numObject = {};

    for(let i = 0; i < nums.length; i++){
        let thisNum = nums[i];
        numObject[thisNum] = i;
    }
    for(var i = 0; i < nums.length; i++){
        let diff = target - nums[i];
        if(numObject.hasOwnProperty(diff) && numObject[diff] !== i){
            return [i, numObject[diff]];
        }
    }
}

module.exports = twoSum;