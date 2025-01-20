class Solution {
  String reversePrefix(String word, String ch) {

    int index=word.indexOf(ch);
    String w="";
    if(index!=-1)
    {
        if(index<=word.length)
    {
        for(int i=index;i>=0;i--)
        {
            w=w+word[i];
        }
        w=w+word.substring(index+1);
    }else{
       w=word.split('').reversed.join('');
    }
    }else{
        w=word;
    }   
    return w;
  }
}