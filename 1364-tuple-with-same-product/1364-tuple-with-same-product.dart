class Solution {
  int tupleSameProduct(List<int> nums) {
     Map<int, List<List<int>>> productMap = {};

  for (int i = 0; i < nums.length; i++) {
    for (int j = i + 1; j < nums.length; j++) {
      int product = nums[i] * nums[j];
      if (!productMap.containsKey(product)) {
        productMap[product] = [];
      }
      productMap[product]!.add([nums[i], nums[j]]);
    }
  }

  int count = 0;

  for (var product in productMap.keys) {
    List<List<int>> pairs = productMap[product]!;
    if (pairs.length >= 2) {
      for (int i = 0; i < pairs.length; i++) {
        for (int j = i + 1; j < pairs.length; j++) {
          if (pairs[i][0] != pairs[j][0] &&
              pairs[i][0] != pairs[j][1] &&
              pairs[i][1] != pairs[j][0] &&
              pairs[i][1] != pairs[j][1]) {
            count += 8;
          }
        }
      }
    }
  }

  return count;
  }
}