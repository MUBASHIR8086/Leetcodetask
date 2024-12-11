class Solution {
  List<int> singleNumber(List<int> nums) {
    int xorResult = 0;
    
    for (int num in nums) {
      xorResult ^= num;
    }

    int rightmostSetBit = xorResult & -xorResult;

    int num1 = 0, num2 = 0;
    for (int num in nums) {
      if ((num & rightmostSetBit) != 0) {
        num1 ^= num; 
      } else {
        num2 ^= num; 
      }
    }

    return [num1, num2]; 
  }
}
