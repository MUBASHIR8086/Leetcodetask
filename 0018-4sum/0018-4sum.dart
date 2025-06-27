class Solution {
List<List<int>> fourSum(List<int> nums, int target) {
  List<List<int>> result = [];
  nums.sort();
  int first = 0;
  print(nums);
  while(nums.length > 3) {
    first = nums.removeAt(0);
    for (int i = 0; i < nums.length; i++) {
      int right = nums.length - 1;
      int left = i + 1;
      while (left< right) {
        int sum = first + nums[left] + nums[right] + nums[i];
        if (sum == target) {
          final to = [nums[left], nums[right], nums[i], first];
          to.sort();
          if (result
              .where((element) =>
          element[0] == to[0] &&
              element[1] == to[1] &&
              element[2] == to[2] &&
              element[3] == to[3])
              .isEmpty) {
            result.add(to);
          }
          left++;
          while(nums[left] == nums[left-1] && left< right){
            left++;
          }
        } else if (sum > target) {
          right--;
        } else if (sum < target) {
          left++;
        }
      }
    }
  }
  return result;
}
}