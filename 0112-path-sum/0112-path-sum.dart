/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  bool hasPathSum(TreeNode? root, int targetSum) {
    return helper(root, 0, targetSum);
  }

  bool helper(TreeNode? root, int currentSum, int targetSum) {
    if (root == null) return false;
    currentSum += root.val;
    if (root.left == root.right && root.left == null) {
      return currentSum == targetSum;
    }
    bool res = helper(root.right, currentSum, targetSum) ||
      helper(root.left, currentSum, targetSum);
    return res;
  }
}