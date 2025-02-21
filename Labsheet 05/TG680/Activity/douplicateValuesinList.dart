void main() {
  var list01 = [1, 2, 3,3, 4, 5, 7, 8, 7, 7, 7, 7, 7, 8];
  
  // Remove duplicates by converting to a Set and back to a List
  var uniqueList = list01.toSet().toList();
  
  print(uniqueList); // Output: [1, 2, 3, 4, 5, 7, 8]
}


// void main() {
//   var list01 = [1, 2, 3, 4, 5, 7, 8, 7, 7, 7, 7, 7, 8];
//   var uniqueList = [];

//   for (var number in list01) {
//     if (!uniqueList.contains(number)) {
//       uniqueList.add(number);
//     }
//   }

//   print(uniqueList); // Output: [1, 2, 3, 4, 5, 7, 8]
// }