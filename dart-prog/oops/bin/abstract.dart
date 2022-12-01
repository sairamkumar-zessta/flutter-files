// # Abstract calss and Abstract Method

void main() {
  var obj = Student();
  obj.updateStudent();
  // var obj1 = Teacher(); abstract classes cannot be intiated;
}

abstract class Teacher {
  // Define Constructor
  //variables
  //Methods
  updateStudent(); // Abstract Method
}

class Student extends Teacher {
  // Defining Abstract Method
  updateStudent() {
    print("I will follow official Doc");
  }
}
