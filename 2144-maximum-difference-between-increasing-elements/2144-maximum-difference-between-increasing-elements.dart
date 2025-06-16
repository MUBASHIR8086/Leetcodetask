class Solution {
  int maximumDifference(List<int> nums) {
    int min = nums[0];
    int maxDiff = -1;

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] > min) {
        maxDiff = maxDiff > (nums[i] - min) ? maxDiff : (nums[i] - min);
      } else {
        min = nums[i]; 
      }
    }

    return maxDiff;
  }
}
