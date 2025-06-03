class Solution {
  List<List<int>> combinationSum(List<int> candidates, int target) {
     List<List<int>> result = [];
  List<int> current = [];

  void backtrack(int remain, int start) {
    if (remain == 0) {
      result.add(List.from(current));
      return;
    } else if (remain < 0) {
      return;
    }

    for (int i = start; i < candidates.length; i++) {
      current.add(candidates[i]);
      backtrack(remain - candidates[i], i); 
      current.removeLast(); 
    }
  }

  backtrack(target, 0);
  return result;
  }
}