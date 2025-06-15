class Solution {
  int maxDiff(int num) {
    String s = num.toString();

    String maxVersion;
    String maxDigit = '';
    for (int i = 0; i < s.length; i++) {
      if (s[i] != '9') {
        maxDigit = s[i];
        break;
      }
    }
    if (maxDigit.isNotEmpty) {
      maxVersion = s.replaceAll(maxDigit, '9');
    } else {
      maxVersion = s;
    }

    String minVersion;
    if (s[0] != '1') {
      minVersion = s.replaceAll(s[0], '1');
    } else {
      String target = '';
      for (int i = 1; i < s.length; i++) {
        if (s[i] != '0' && s[i] != '1') {
          target = s[i];
          break;
        }
      }
      if (target.isNotEmpty) {
        minVersion = s.replaceAll(target, '0');
      } else {
        minVersion = s;
      }
    }

    int maxNum = int.parse(maxVersion);
    int minNum = int.parse(minVersion);

    return maxNum - minNum;
  }
}

