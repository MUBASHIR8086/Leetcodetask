class Solution {
  List<int> lexicalOrder(int n) {
     List<int> result = [];

  void dfs(int current) {
    if (current > n) return;
    result.add(current);
    for (int i = 0; i <= 9; i++) {
      int next = current * 10 + i;
      if (next > n) break;
      dfs(next);
    }
  }

  for (int i = 1; i <= 9; i++) {
    dfs(i);
  }

  return result;
  }
}