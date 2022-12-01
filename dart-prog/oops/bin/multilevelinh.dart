// # Inheritance
// ## Single Inheritance

void main() {
  var obj1 = GrandSon();
  obj1.addValue(1000);
  obj1.disp();
  // obj1.disp();
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
  int bank_bal = 5000;
  totalMoney() {
    return money + bank_bal;
  }
}

// grandchild class
class GrandSon extends Son {
  String bike = "k6";
  disp() {
    print(bike);
    print(car);
    print(totalMoney());
  }
}
