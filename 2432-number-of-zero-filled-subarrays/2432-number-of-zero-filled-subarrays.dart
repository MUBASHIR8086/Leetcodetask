class Solution {
  int zeroFilledSubarray(List<int> nums) {
   int res = 0, zeroSeqLength = 0;
    for (final n in nums) {
      if (n == 0) {
        zeroSeqLength += 1;
        res += zeroSeqLength;
      } else {
        zeroSeqLength = 0;
      }
    }
    return res;
  }
}