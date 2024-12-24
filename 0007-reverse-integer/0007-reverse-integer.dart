import 'dart:math';

class Solution {
  int reverse(int num) {
    int reversed = 0;
    bool isNegative = num < 0;
    num = num.abs();  // Work with positive number
    
    while (num != 0) {
      reversed = reversed * 10 + (num % 10);
      num ~/= 10;
    }
    
    if (reversed < -pow(2, 31) || reversed > pow(2, 31) - 1) {
      return 0;  // Return 0 if the reversed number overflows
    }
    
    return isNegative ? -reversed : reversed;
  }
}
