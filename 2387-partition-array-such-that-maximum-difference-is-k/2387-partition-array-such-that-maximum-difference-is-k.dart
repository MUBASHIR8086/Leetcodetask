class Solution {
 int partitionArray(List<int> nums, int k) {
  nums.sort();

  int count = 1; 
  int start = nums[0]; 

  for (int i = 1; i < nums.length; i++) {
    if (nums[i] - start > k) {
      count++;
      start = nums[i];
    }
  }

  return count;
}



}