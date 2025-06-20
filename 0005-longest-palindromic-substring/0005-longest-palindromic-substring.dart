class Solution {
  String longestPalindrome(String s) {
     String result = "";

  for (int i = 0; i < s.length; i++) {
    String oddPal = expandAroundCenter(s, i, i);

    String evenPal = expandAroundCenter(s, i, i + 1);

    String longer = oddPal.length > evenPal.length ? oddPal : evenPal;

    if (longer.length > result.length) {
      result = longer;
    }
  }

  return result;

    
  }
  String expandAroundCenter(String s, int left, int right) {
  while (left >= 0 && right < s.length && s[left] == s[right]) {
    left--;
    right++;
  }

  return s.substring(left + 1, right);
}
}