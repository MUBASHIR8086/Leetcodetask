class Solution {
  int mostBooked(int n, List<List<int>> meetings) {
    meetings.sort((a, b) => a[0].compareTo(b[0]));

    List<List<int>> busy = [];
    List<int> free = List.generate(n, (i) => i);
    List<int> count = List.filled(n, 0);

    for (var m in meetings) {
      int start = m[0], end = m[1];

      busy.sort((a, b) => a[0] == b[0] ? a[1] - b[1] : a[0] - b[0]);
      while (busy.isNotEmpty && busy[0][0] <= start) {
        free.add(busy.removeAt(0)[1]);
      }

      free.sort();

      int room, newEnd;
      if (free.isNotEmpty) {
        room = free.removeAt(0);
        newEnd = end;
      } else {
        var earliest = busy.removeAt(0);
        room = earliest[1];
        newEnd = earliest[0] + end - start;
      }

      busy.add([newEnd, room]);
      count[room]++;
    }

    int max = 0, idx = 0;
    for (int i = 0; i < n; i++) {
      if (count[i] > max || (count[i] == max && i < idx)) {
        max = count[i];
        idx = i;
      }
    }
    return idx;
  }
}