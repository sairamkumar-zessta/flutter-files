// # Set
void main() {
  var set1 = {'sai', 'karthik', 'anil'};
  print(set1);
  print(set1.runtimeType);

  var set2 = {'sai', 'karthik', 'anil', 2, 3};
  print(set2);
  print(set2.runtimeType);

  var set3 = <String>{"Niharika", "Raj", 'Sonam'};
  print(set3);
  print(set3.runtimeType);

  Set<int> set4 = {24, 32};
  print(set4);

  // ## Empty Set
  var set5 = <double>{};
  print(set5);
  print(set5.runtimeType);

  // ## Map not set
  var set6 = {};
  print(set6);
  print(set6.runtimeType);

  Set set7 = {};
  print(set7.runtimeType);
  Set<bool> set8 = Set();
  print(set8);
  print(set8.runtimeType);

  var prog = <String>{};
  prog.add("Javascript");
  prog.add("Dart");
  print(prog);
  print(prog.runtimeType);

  // var set_A = {1, 3, 6, 3, 1, 7};
  // print(set_A);
}
