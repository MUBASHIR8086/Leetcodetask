class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> map = {};

  for (int i = 0; i < nums.length; i++) {
    int compl = target - nums[i];
    
    if (map.containsKey(compl)) {
      return [map[compl]!, i];
    }
    
    map[nums[i]] = i;
  }
  
   throw Exception("No solution found");
}

    
  }
