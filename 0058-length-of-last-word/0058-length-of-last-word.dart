class Solution {
  int lengthOfLastWord(String s) {
    List<String> splittedString = s.trim().split(' ');

    return splittedString.last.length;
  }
}

