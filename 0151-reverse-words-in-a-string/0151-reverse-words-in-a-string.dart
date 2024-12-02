class Solution {
  String reverseWords(String s) {
   List<String>arr=s.trim().split(RegExp(r'\s+'));
arr=arr.reversed.toList();
  return arr.join(' ');
  }
}