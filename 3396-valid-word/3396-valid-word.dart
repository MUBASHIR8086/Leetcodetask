class Solution {
  static const _vowels = <int>{
    65, 69, 73, 79, 85, // A, E, I, O, U
    97,101,105,111,117  // a, e, i, o, u
  };

  bool isValid(String word) {
    if (word.length < 3) return false;

    int vowels = 0, consonants = 0;
    for (int i = 0; i < word.length; ++i) {
      int c = word.codeUnitAt(i);

      // digit?
      if (c >= 48 && c <= 57) continue;

      // uppercase letter
      if (c >= 65 && c <= 90) {
        _vowels.contains(c) ? ++vowels : ++consonants;
        continue;
      }

      // lowercase letter
      if (c >= 97 && c <= 122) {
        _vowels.contains(c) ? ++vowels : ++consonants;
        continue;
      }

      return false;          
    }
    return vowels > 0 && consonants > 0;
  }
}