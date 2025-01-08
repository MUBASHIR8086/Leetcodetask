class Solution {
  int countPrefixSuffixPairs(List<String> words) {
    int count = 0;
    for(int i = 0; i < words.length; i++){
        String word1 = words[i];
        for(int j = i+1; j < words.length; j++){
            String word2 = words[j];
            if(word2.startsWith(word1) && word2.endsWith(word1)) count++;
        }
    }
    return count;
  }
}