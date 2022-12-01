// Class and Object
/*
class Class_name{
  class Member
}
*/
void main() {
  // Creating an Object
  var samsung = new Mobile();

  // calling Instance Method using Object
  samsung.showModel("Galaxy 100");

  // Creating an Object
  // new is optional
  var redmi = Mobile();
  redmi.showModel("Redmi 9 prime");

  // Accessing Instance Variable using Object
  print(samsung.ram);
  print(redmi.ram);

  // Accessing Static Variable
  print(Mobile.memory);
  var total_memory = Mobile.addExtraMemory(12);
  print(total_memory);
  print(Mobile.memory);
}

class Mobile {
  // Instance Variable
  var model;
  int ram = 4;

  // Instance Method
  showModel(md) {
    model = md;
    print(model);
  }

  // static variable
  static int memory = 12;

  // static method
  static addExtraMemory(int extra) {
    memory = memory + extra;
    return memory;
  }
}
