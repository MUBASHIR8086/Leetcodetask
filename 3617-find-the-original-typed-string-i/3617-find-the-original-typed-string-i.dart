class Solution {
  int possibleStringCount(String word) {
     List<List<dynamic>> groups = [];
  int n = word.length;
  int i = 0;

  while (i < n) {
    int j = i;
    while (j < n && word[j] == word[i]) {
      j++;
    }
    groups.add([word[i], j - i]); 
    i = j;
  }

  int total = 1;

  
  for (int k = 0; k < groups.length; k++) {
    int count = groups[k][1];
    if (count >= 2) {
      total += (count - 1); 
    }
  }

  return total;
 
  }
}