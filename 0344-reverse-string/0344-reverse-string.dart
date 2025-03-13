class Solution {
  void reverseString(List<String> s) {
    for (int i = 0, n = s.length - 1; i < n; i++, n--) {
      String temp = s[i];
      s[i] = s[n];
      s[n] = temp;
    }
  }
}