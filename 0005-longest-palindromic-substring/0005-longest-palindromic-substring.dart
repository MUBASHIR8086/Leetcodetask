class Solution {
  String longestPalindrome(String s) {
     String result = "";

  for (int i = 0; i < s.length; i++) {
    // Check for odd-length palindrome
    String oddPal = expandAroundCenter(s, i, i);

    // Check for even-length palindrome
    String evenPal = expandAroundCenter(s, i, i + 1);

    // Choose the longer palindrome
    String longer = oddPal.length > evenPal.length ? oddPal : evenPal;

    // Update result if this is the longest so far
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

  // Return the valid palindrome
  return s.substring(left + 1, right);
}
}