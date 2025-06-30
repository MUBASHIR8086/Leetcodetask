class Solution {
  int findLHS(List<int> nums) {
     Map<int, int> freqMap = {};

  for (int num in nums) {
    freqMap[num] = (freqMap[num] ?? 0) + 1;
  }

  int maxLength = 0;

  for (int key in freqMap.keys) {
    if (freqMap.containsKey(key + 1)) {
      int length = freqMap[key]! + freqMap[key + 1]!;
      maxLength = length > maxLength ? length : maxLength;
    }
  }

  return maxLength;
  }
}