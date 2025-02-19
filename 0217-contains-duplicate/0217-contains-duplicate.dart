class Solution {
  bool containsDuplicate(List<int> nums) {
    Set<int> seen = {};

    for (int element in nums) {
      if (seen.contains(element)) {
        return true;
      }
      seen.add(element);
    }

    return false;
  }
}