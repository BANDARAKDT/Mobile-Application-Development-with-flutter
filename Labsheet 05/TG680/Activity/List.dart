void main() {
  var list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print('List: $list');

  // Filtering numbers greater than or equal to 5
  var filteredList = list.where((num) => num >= 5).toList();
  print('Numbers greater than or equal to 5: $filteredList');
}