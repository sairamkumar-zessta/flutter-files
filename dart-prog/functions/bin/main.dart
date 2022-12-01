void main() {
  // # Function
  /*
  # function defining
  returnType function_name(datatype parameter){
    statements
    return statement;
  }
  #calling function
  function_name(parameter)
  */

  //##Function without parameter
  myfun() {
    print("Hello Dart");
  }

  myfun();

  addfun() {
    int a = 10;
    int b = 20;
    return a + b;
  }

  int req = addfun();
  print(req);

  addfun1(a, b) => a + b;

  int req1 = addfun1(5, 8);
  print(req1);

  // ##Function with parameter
  // ### Positional Parameter
  int addfunc(a, b) {
    return a + b;
  }

  int total = addfunc(3, 8);
  print(total);

  int addfunc1(int a, int b) {
    return a + b;
  }

  int out = addfunc1(3, 8);
  print(out);

  //### Optional Positional Parameter
  String IntroFunc(String name, [city]) {
    return 'Iam $name from $city';
  }

  var re = IntroFunc("sai");
  print(re);

  String IntroFunc1(String name, [city]) {
    if (city != null) {
      return 'Iam $name from $city';
    } else {
      return 'Iam $name';
    }
  }

  var read = IntroFunc1("sai");
  print(read);

  //### Default value Parameters
  String IntroFunc2(String name, [String city = "Hyderabad"]) {
    return 'Iam $name from $city';
  }

  var read2 = IntroFunc2("sai");
  print(read2);

  String IntroFunc3(String name, [city = "Hyderabad"]) {
    return 'Iam $name from $city';
  }

  var read3 = IntroFunc3("sai", "Nirmal");
  print(read3);

  //### Named Parameter
  addfunc2(name, {a, b}) {
    print("$name wants A=$a and B=$b");
  }

  addfunc2("Sai", b: 10, a: 20);

  //## Anonymous Function
  var student = ["Sai", "Anil", "Karthik"];
  student.forEach((element) {
    print(element);
  });
  var student1 = ["Sai", "Anil", "Karthik"];
  student1.forEach((value) => print(value));
}
