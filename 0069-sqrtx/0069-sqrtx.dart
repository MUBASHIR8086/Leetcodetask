class Solution {
  int mySqrt(int x) {
    if(x==0||x==1){
        return x;
    }
    int sum=1;
    while(sum*sum<=x){
        sum++;
    }
    return sum -1;
    
  }
}