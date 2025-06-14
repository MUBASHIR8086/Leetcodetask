class Solution {
  int minMaxDifference(int num) {
    String original = num.toString();

    int remap(String s, String from, String to) {
      return int.parse(s.replaceAll(from, to));
    }

    int maxValue = num;
    for (int i = 0; i <= 9; i++) {
      String from = i.toString();
      int remapped = remap(original, from, '9');
      maxValue = remapped > maxValue ? remapped : maxValue;
    }

    int minValue = num;
    for (int i = 0; i <= 9; i++) {
      String from = i.toString();
      int remapped = remap(original, from, '0');
      minValue = remapped < minValue ? remapped : minValue;
    }

    return maxValue - minValue;
  }
}

