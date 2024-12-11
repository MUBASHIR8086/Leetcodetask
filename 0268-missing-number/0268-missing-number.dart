class Solution {
  int missingNumber(List<int> nums) {
    int n=nums.length;
    int sum=n*(n+1) ~/2;
    int now=nums.reduce((a,b)=>a+b);
    return sum-now;
  }
}