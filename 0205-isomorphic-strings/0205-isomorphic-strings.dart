class Solution {
  bool isIsomorphic(String s, String t) {
     if (s.length != t.length) {
    return false;
  }

  Map<String, String> charMap = {};
  Set<String> mappedChars = {};

  for (int i = 0; i < s.length; i++) {
    String sChar = s[i];
    String tChar = t[i];

    if (charMap.containsKey(sChar)) {
      if (charMap[sChar] != tChar) {
        return false;
      }
    } else {
      if (mappedChars.contains(tChar)) {
        return false;
      }
      charMap[sChar] = tChar;
      mappedChars.add(tChar);
    }
  }

  return true;
  }
}