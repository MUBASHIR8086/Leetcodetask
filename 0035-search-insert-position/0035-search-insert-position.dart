class Solution {
  int searchInsert(List<int> nums, int target) {
    for(int n=0;n<nums.length;n++){
        if(nums[n]==target||nums[n]>target){
            return n;
        }
    }
    return nums.length;
  }
}