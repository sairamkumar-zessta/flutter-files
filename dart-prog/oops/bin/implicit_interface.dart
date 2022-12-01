// # Implicit Interface
// class class_name implements
// interface_name
// all methods must be implement.
void main() {
  var obj = Father();
  obj.disp();
  var obj1 = Son();
  obj1.disp();
  obj1.disp1();
  obj1.disp2();
}

class Father {
  disp() {
    print('I am  Father Class');
  }

  disp1() {
    print("I can make decissions");
  }
}

class Mother {
  disp2() {
    print('I am  Mother Class');
  }
}

class Son implements Father, Mother {
  disp() {
    print('I am  Son Class 1');
  }

  disp1() {
    print("I follow decissions of father");
  }

  disp2() {
    print('I am  Son Class 2');
  }
}
