class Solution {
  int maxAscendingSum(List<int> nums) {
     if (nums.isEmpty) return 0;

  int maxSum = nums[0]; // Initi
  int currentSum = nums[0]; 

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] > nums[i - 1]) {
      currentSum += nums[i];
    } else {
      if (currentSum > maxSum) {
        maxSum = currentSum;
      }
      currentSum = nums[i]; 
    }
  }

  if (currentSum > maxSum) {
    maxSum = currentSum;
  }

  return maxSum;
  }
}