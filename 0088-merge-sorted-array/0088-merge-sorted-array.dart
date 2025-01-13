class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    for(int i =nums1.length-1;i>=m;i--){
        nums1.removeAt(i);
    }
    for(int i = 0 ;i<n;i++){
        nums1.add(nums2[i]);
    }
    nums1.sort();
  }
}