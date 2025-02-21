class Solution {
  void reverseString(List<String> s) {
    for (int left = 0, right = s.length - 1; left < right; left++, right--) {
      String temp = s[left];
      s[left] = s[right];
      s[right] = temp;
    }
  }
}