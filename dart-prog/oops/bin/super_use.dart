// # super use
void main() {
  var obj1 = Son();
  obj1.disp();
  obj1.disp1("Sai", "Jam");
}

// Super Class
class Father {
  var money = 1000;
  disp() {
    print('I am super class');
  }

  disp1(String name, String address) {
    print("My name is $name, Iam from $address");
  }
}

// sub class
class Son extends Father {
  var money = 2000;
  @override
  disp() {
    super.disp();
    print('I am Sub class');
    print(money);
    print(super.money);
  }

// both arguments must be in same number and must be of same data type;
  @override
  disp1(String a, b) {
    print("My name is $a, Iam from $b");
  }
}
