class Solution {
  int sumOfMultiples(int n) {
      int sum=0;
      int a=1;
      List<int> arr=[];
      for(int i=3;i<=7;i=i+2){
          for(a=1;a<=n;a++){
             
              if(a%i==0){  
                 
                if(!arr.contains(a)){
                    arr.add(a);
                 sum=sum+a; 
                }   
                
          }
          }  
      }
      return sum;
  }
}