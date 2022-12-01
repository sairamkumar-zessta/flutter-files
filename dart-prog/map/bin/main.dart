void main() {
  // #Map - combination of key,value pairs, key-unique, value-may repeat
  // ## MAp Literals
  var address = {
    "vill": "Jam",
    'H-no': '4-131/5',
    'Dist': 'Nirmal',
    'State': "Telangana",
  };
  print(address);
  print(address.runtimeType);

  Map<String, int> age = {"Karthik": 23, "Tej": 24, "Raju": 28};
  print(age);
  print(age.runtimeType);

  var product = {10: 'Mobile', 20: "Laptop", 30: "Keyboard"};
  print(product);
  print(product.runtimeType);

  //## Empty Map
  // ## Map() Constructor

  var add = Map();
  print(add);
  print(add.runtimeType);

  Map<String, double> add1 = Map();
  print(add1);
  print(add1.runtimeType);

  var add2 = {};
  print(add2);
  print(add2.runtimeType);

  //##Add Items to map
  var add3 = {};
  add3['name'] = 'Sai';
  add3['Age'] = 23;
  add3['Design'] = 'Software Devloper';
  print(add3);
  print(add3.runtimeType);
// ## Accessing Items.
  print(add3['name']);
  print(add3['Design']);

  var map_a = {
    "Frontend": "HTML,CSS,Javascript",
    "Backend": "Django",
    "Database": "Postgres SQL"
  };
  print(map_a);
  print(map_a.length);
  print(map_a.runtimeType);
  print(map_a.isEmpty);
  print(map_a.isNotEmpty);
  print(map_a.keys);
  print(map_a.values);
  print(map_a.containsKey("Frontend"));
  print(map_a.containsValue("Dart"));
}
