// # Inheritance
// ## Single Inheritance

void main() {
  var obj1 = Son();
  obj1.addValue(1000);
  obj1.disp();
}

// Parent class / Super class
class Father {
  var money;
  addValue(m) {
    money = m;
  }
}

// Child class / Sub class
class Son extends Father {
  String car = "i 10";
  disp() {
    print(car);
    print(money);
  }
}
