class Solution {
  bool isPalindrome(int x) {
    String reverse=x.toString().split('').reversed.join();
    if(x.toString()==reverse){
        return true;
    }else{
        return false;
    }
    
  }
}