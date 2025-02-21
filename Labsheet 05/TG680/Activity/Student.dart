class Student {
  String name = "Dela";
  int age = 25;
  double marks = 85.2;

  // Getters
  String get getName => this.name;
  int get getAge => this.age;
  double get getMarks => this.marks;

  // Setters
  set setName(String name) => this.name = name;
  set setAge(int age) => this.age = age;
  set setMarks(double marks) => this.marks = marks;

  void result() {
    print(this.name);
  }
}

void main() {
  Student student = Student();
  print(student.getName); // Prints: Dela

  student.setName = "delaaa";
  student.setAge = 30;
  student.setMarks = 90.0;

  print(student.getName); // Prints: delaaa
  student.result();       // Prints: delaaa
}