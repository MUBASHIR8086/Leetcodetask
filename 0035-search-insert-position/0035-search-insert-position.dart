class Solution {
  int? searchInsert(List<int> nums, int target) {
    int startidx=0;
    int endidx = nums.length-1;
    int middle=0;
    while(startidx <= endidx){
      middle=startidx+(endidx-startidx)~/2;
      if(nums[middle]==target)return middle;
      else if(nums[middle]>target)endidx=middle-1;
      else startidx=middle+1;
    }
    if(nums[middle]>target)return middle;return middle+1;
  }
  }