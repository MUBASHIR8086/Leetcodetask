class Solution {
  List<int> evenOddBit(int n) {
    String str = n.toRadixString(2); 
    int odd = 0, even = 0, index = 0, len = str.length - 1;

    for (var bit in str.split('')) { 
      if (bit == "1") {
        if ((len - index) % 2 == 0) {
          even++;
        } else {
          odd++;
        }
      }
      index++;
    }

    return [even, odd]; 
  }
}


