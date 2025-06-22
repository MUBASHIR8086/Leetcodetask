class Solution {
  List<String> divideString(String s, int k, String fill) {
     List<String> result = [];
  
  for (int i = 0; i < s.length; i += k) {
    String group = s.substring(i, i + k > s.length ? s.length : i + k);

    if (group.length < k) {
      group = group + fill * (k - group.length);
    }

    result.add(group);
  }

  return result;
  }
}