class Solution {
  String addBinary(String a, String b) {
     StringBuffer result = StringBuffer();
    
   
    int i = a.length - 1; 
    int j = b.length - 1;  
    int carry = 0;        
  
    while (i >= 0 || j >= 0 || carry > 0) {
      int digitA = i >= 0 ? int.parse(a[i]) : 0;
      int digitB = j >= 0 ? int.parse(b[j]) : 0;
      
      int sum = digitA + digitB + carry;
      carry = sum ~/ 2;  
      result.write(sum % 2);  
      
      i--;
      j--;
    }
    
    return result.toString().split('').reversed.join();
  }
}

  
