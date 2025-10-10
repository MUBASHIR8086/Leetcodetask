class Solution {
      int maximumEnergy(List<int> energy, int k) {
            List<int> total = [...energy];
                  for (var i = energy.length-k-1; i>=0; i--){
                            total[i] += total[i+k];
                                  }
                                        return total.reduce(max);
                                          }
                                          }
