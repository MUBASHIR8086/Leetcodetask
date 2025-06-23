class Solution {
 void rotate(List<int> nums, int k) {
  int n = nums.length;
  k = k % n; 

  List<int> rotated = nums.sublist(n - k) + nums.sublist(0, n - k);

  for (int i = 0; i < n; i++) {
    nums[i] = rotated[i];
  }
}

}