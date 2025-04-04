class Solution {
  int majorityElement(List<int> nums) {
 int count = 0;
  int number= 0;

  for (var num in nums) {
    if (count == 0) {
      number = num;
    }
    count += (num == number) ? 1 : -1;
  }

  return number;
  }
}