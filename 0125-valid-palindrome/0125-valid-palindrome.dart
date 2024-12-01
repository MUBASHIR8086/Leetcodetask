class Solution {
  bool isPalindrome(String s) {
    s = s.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), ''); 
    int left = 0;
    int right = s.length - 1;
    
    while (left < right) {
      if (s[left] != s[right]) {
        return false; 
      }
      left++;
      right--;
    }
    
    return true; 
  }
}
