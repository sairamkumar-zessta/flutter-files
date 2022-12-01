// # Constructor;
/*
class_name(parameter){
  constructor body;
}

*/

// Named Constructor
/*
class_name.constructor_name(parameter){
  constructor body;
}


*/

void main() {
  // creating an object
  var redmi = Mobile('Redmi 9 Prime', 4, 32);
  // calling instance method
  redmi.show();
  //calling static variable and method
  print(Mobile.memory);
  Mobile.add_display_memory(12);
  // creating an object - named_constructor;
  //var obj1 = Mobile.warrenty(12);
}

class Mobile {
  var model;
  var ram;
  var camera;
  /*
  Mobile(m, r, c) {
    this.model = m;
    this.ram = r;
    this.camera = c;
    print("Constructor Called");
  }
  */
  Mobile(this.model, this.ram, this.camera);
  // Instance Method
  show() {
    print("Model_no:$model");
    print("Ram:${ram}GB");
    print("camera:${camera}PX");
  }

  //static var
  static int memory = 12;
  // static method
  static add_display_memory(int mem) {
    memory = memory + mem;
    print("Memory: ${memory}GB");
  }

  // Named Constructor
  Mobile.warrenty(int w) {
    print("named constuctor called");
    print(w);
  }
}
