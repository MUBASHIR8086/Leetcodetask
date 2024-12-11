class Solution {
  int scoreOfString(String s) {
    int anser=0;
    for(int i=1;i<s.length;i++){
        anser += (s.codeUnitAt(i)-s.codeUnitAt(i-1)).abs();

    }
    return anser;
    
  }
}