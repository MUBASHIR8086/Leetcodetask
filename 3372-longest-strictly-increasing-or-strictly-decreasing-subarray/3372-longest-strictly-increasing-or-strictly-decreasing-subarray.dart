class Solution {
  int longestMonotonicSubarray(List<int> nums) {
    if (nums.isEmpty) return 0;

  int maxLen = 1; 
  int currentInc = 1; 
  int currentDec = 1; 

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] > nums[i - 1]) {
      currentInc++; 
      currentDec = 1;
    } else if (nums[i] < nums[i - 1]) {
      currentDec++; 
      currentInc = 1; 
    } else {
      currentInc = 1; 
      currentDec = 1;
    }

    if (currentInc > maxLen) maxLen = currentInc;
    if (currentDec > maxLen) maxLen = currentDec;
  }

  return maxLen;
}
  }
