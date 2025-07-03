class Solution {
  String kthCharacter(int k) {
    String word = 'abbcbccdbccdcddebccdcddecddedeefbccdcddecddedeefcddedeefdeefeffgbccdcddecddedeefcddedeefdeefeffgcddedeefdeefeffgdeefeffgeffgfgghbccdcddecddedeefcddedeefdeefeffgcddedeefdeefeffgdeefeffgeffgfgghcddedeefdeefeffgdeefeffgeffgfgghdeefeffgeffgfggheffgfgghfgghghhi';
    while(word.length<k){
        String c_word = word;
        for(int i=0;i<c_word.length;i++){
            word+=String.fromCharCode(word.codeUnitAt(i)+1);
        }
    }
    print(word);
    return word[k-1];
  }

  String generate(String s){
    String r = '';

    return r;
  }
}