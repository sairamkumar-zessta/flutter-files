void main() {
  var obj1 = Son();
  obj1.disp();
  obj1.disp1("Sai", "Jam");
}

// Super Class
class Father {
  disp() {
    print('I am super class');
  }

  disp1(String name, String address) {
    print("My name is $name, Iam from $address");
  }
}

// sub class
class Son extends Father {
  @override
  disp() {
    print('I am Sub class');
  }

// both arguments must be in same number and must be of same data type;
  @override
  disp1(String a, b) {
    print("My name is $a, Iam from $b");
  }
}
