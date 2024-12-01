class Solution {
  List<int> buildArray(List<int> nums) {
    return nums.map((n)=>nums[n]).toList();
    
  }
}