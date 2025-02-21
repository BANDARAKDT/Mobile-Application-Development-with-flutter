void main() {
  //Numbers
  int number = 10;
  double decimal = 10.5;
  print('Integer $number, double $decimal');

  //String
  String greeting = "Hello world";
  print(greeting);

  //Boolean
  bool isDartFun = true;
  print('Is Dart fun? $isDartFun');

  //List
  var list = [1, 2, 3, 4, 5];
  print('List: $list');

  //Map
  //using a map literal
  var mapping = {'id': 1, 'name': 'Dart'};
  print('Map: $mapping');


  //using a constructor 
  var mapping2= Map();
  mapping2['id']=1;
  mapping2['name']='dela';
  print(mapping2);


}
