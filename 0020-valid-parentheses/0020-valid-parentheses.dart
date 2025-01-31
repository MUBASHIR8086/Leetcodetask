class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    Map<String, String> bracket = {
      '}': '{',
      ']': '[',
      ')': '(',
    };

    for (int i = 0; i < s.length; i++) {
      String char = s[i];
      if (bracket.containsValue(char)) {
        stack.add(char);
      } else if (bracket.containsKey(char)) {
        if (stack.isEmpty || stack.removeLast() != bracket[char]) {
          return false;
        }
      }
    }
    return stack.isEmpty;
  }
}
