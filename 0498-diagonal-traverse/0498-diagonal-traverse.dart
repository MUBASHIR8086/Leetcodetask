class Solution {
  List<int> findDiagonalOrder(List<List<int>> mat) {
    int m = mat.length, n = mat[0].length;
    List<int> res = [];

    for (int d = 0; d < m + n - 1; d++) {
      List<int> diagonal = [];

      // collect all elements in this diagonal
      int r = d < n ? 0 : d - n + 1;
      int c = d < n ? d : n - 1;

      while (r < m && c >= 0) {
        diagonal.add(mat[r][c]);
        r++;
        c--;
      }

      // reverse every even diagonal
      if (d % 2 == 0) {
        diagonal = diagonal.reversed.toList();
      }

      res.addAll(diagonal);
    }

    return res;
  }
}