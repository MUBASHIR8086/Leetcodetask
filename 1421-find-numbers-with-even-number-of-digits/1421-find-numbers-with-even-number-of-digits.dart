class Solution {
  int findNumbers(List<int> nums) {
 return nums.where((num) => num.toString().length % 2 == 0).length;    
  }
}