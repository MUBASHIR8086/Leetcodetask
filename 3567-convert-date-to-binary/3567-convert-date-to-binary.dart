
class Solution {
  String? convertDateToBinary(String date) {
    List<String> e =[];
    List<int> d = date.split('-').map(int.parse).toList();
    for(int i in d){
        e.add(i.toRadixString(2));
    }
    return e.join('-');
  }
}