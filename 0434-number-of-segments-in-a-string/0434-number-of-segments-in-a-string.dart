class Solution {
  int countSegments(String s) {
    String name=s.trim();
    if(name.isEmpty){
        return 0;
    }else{
        List<String>now=name.split(RegExp(r'\s+'));
        return now.length;
    }
    
  }
}