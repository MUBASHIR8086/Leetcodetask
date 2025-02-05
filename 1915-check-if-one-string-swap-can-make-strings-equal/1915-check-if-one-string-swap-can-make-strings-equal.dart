class Solution {
  bool areAlmostEqual(String s1, String s2) {
   
  if (s1 == s2) return true;

  List<int> arr = [];
  for (int i = 0; i < s1.length; i++) {
    if (s1[i] != s2[i]) {
      arr.add(i);
    }
    if (arr.length > 2) return false;
  }

  if (arr.length == 2) {
    int index1 = arr[0];
    int index2 = arr[1];
    String now = s1.substring(0, index1) +
        s1[index2] +
        s1.substring(index1 + 1, index2) +
        s1[index1] +
        s1.substring(index2 + 1);
    return now == s2;
  }

  return false;
}
}

