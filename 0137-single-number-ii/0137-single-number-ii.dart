class Solution {
  int singleNumber(List<int> nums) {
     int seenu = 0, siya = 0;

  for (int num in nums) {
  
    siya = siya | (seenu & num);
    
   
    seenu = seenu ^ num;
    
    
    int threes = seenu & siya;
    
   
    seenu &= ~threes;
    siya &= ~threes;
  }
  
  return seenu; 
}

    
  }
