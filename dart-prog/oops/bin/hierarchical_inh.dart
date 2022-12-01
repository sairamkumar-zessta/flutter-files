// ## Hierarchical Inheritance
void main() {
  var s_obj = Son();
  s_obj.addValue(1000);
  s_obj.disp();
  var d_obj = Daughter();
  d_obj.addValue(1000);
  d_obj.disp();
}

class Father {
  var money;
  addValue(m) {
    money = m;
  }
}

// child class
class Son extends Father {
  String car = 'i 10';
  disp() {
    print(car);
    print(money);
  }
}

class Daughter extends Father {
  String scooty = 'bajaj p4';
  disp() {
    print(scooty);
    print(money);
  }
}
