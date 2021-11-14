//Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
//The overall run time complexity should be O(log (m+n)).

var findMedianSortedArrays = (nums1,nums2) => {
    let m = nums1.length;
    let n = nums2.length;
    let i = 0;
    let j = 0;
    let k = 0;
    let l = 0;
    let median = 0;
    let arr = [];
    while(i<m && j<n){
        if(nums1[i]<nums2[j]){
            arr[k] = nums1[i];
            i++;
            k++;
        }else{
            arr[k] = nums2[j];
            j++;
            k++;
        }
    }
    while(i<m){
        arr[k] = nums1[i];
        i++;
        k++;
    }
    while(j<n){
        arr[k] = nums2[j];
        j++;
        k++;
    }
    if(k%2==0){
        median = (arr[k/2]+arr[k/2-1])/2;
    }else{
        median = arr[Math.floor(k/2)];
    }
    return median;
}