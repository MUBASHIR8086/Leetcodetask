class Solution {
  int maxAdjacentDistance(List<int> nums) {
    if (nums.length < 2) return 0;

  int maxDiff = 0;
  int n = nums.length;

  for (int i = 0; i < n; i++) {
    // Circular index: next element is (i + 1) % n
    int diff = (nums[i] - nums[(i + 1) % n]).abs();
    if (diff > maxDiff) {
      maxDiff = diff;
    }
  }

  return maxDiff;
  }
}