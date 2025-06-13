class Solution {
  int minimizeMax(List<int> nums, int p) {
    nums.sort();

    int low = 0;
    int high = nums.last - nums.first;

    bool canFormPairs(int maxDiff) {
      int count = 0;
      int i = 1;

      while (i < nums.length) {
        if ((nums[i] - nums[i - 1]) <= maxDiff) {
          count++;
          i += 2;
        } else {
          i++;
        }
      }
      return count >= p;
    }

    while (low < high) {
      int mid = (low + high) ~/ 2;
      if (canFormPairs(mid)) {
        high = mid;
      } else {
        low = mid + 1;
      }
    }

    return low;
  }
}

