class Solution {
  int majorityElement(List<int> nums) {
    int counted =0,continu=0;
    for(int num in nums){
        if(counted == 0){
            continu=num;
        }
        counted +=(num==continu) ? 1:-1;
    }
    return continu;
    
  }
}
