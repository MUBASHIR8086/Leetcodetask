class Solution {
      List<int> successfulPairs(List<int> spells, List<int> potions, int success) {
          // create a pairs list with n elements
              List<int> pairs = List.filled(spells.length, 0);

                  // sort the potions list to do binary search
                      potions.sort();

                                  for (int i = 0; i < spells.length; i++) {
                                        int left = 0;
                                              int right = potions.length - 1;
                                                    while (left <= right) {
                                                            int mid = (left + right) ~/ 2;
                                                                    if (spells[i] * potions[mid] >= success) {
                                                                              right = mid - 1;
                                                                                      } else {
                                                                                                left = mid + 1;
                                                                                                        }
                                                                                                              }

                                                                                                                    // add the successful pairs in pairs list
                                                                                                                          pairs[i] = potions.length - left;
                                                                                                                              }

                                                                                                                                  return pairs;
                                                                                                                                    }
                                                                                                                                    }
