class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    int m = nums1.length, n = nums2.length;
    int i = 0, j = 0;
    int totalLength = m + n;

    int cv = 0, pv = 0;

    for (int k = 0; k <= totalLength ~/ 2; k++) {
      pv = cv; 

      if (i < m && (j >= n || nums1[i] < nums2[j])) {
        cv = nums1[i];
        i++;
      } else {
        cv = nums2[j];
        j++;
      }
    }

    if (totalLength % 2 == 1) {
      return cv.toDouble();
    }

    return (pv + cv) / 2.0;
  }
}
