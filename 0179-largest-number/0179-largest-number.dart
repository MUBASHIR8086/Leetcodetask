class Solution {
  String largestNumber(List<int> nums) {
     List<String> numStrs = nums.map((num) => num.toString()).toList();
     numStrs.sort((a, b) => (b + a).compareTo(a + b));
     String result = numStrs.join('');
     if (result[0] == '0') {
    return '0';
  }

  return result;
}

    
  }
