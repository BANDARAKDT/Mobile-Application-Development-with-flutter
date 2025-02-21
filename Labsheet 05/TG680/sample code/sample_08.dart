class Sample08 {
  String name = 'Dela';

//getter method
  String get emp_name {
    return name;
  }

//setter method
  void set emp_name(String name) {
    this.name = name;
  }

  void result() {
    print(name);
  }

  void main() {
    Sample08 sample08 = new Sample08();
    sample08.name = "delaaa";
    sample08.result();
  }
}
