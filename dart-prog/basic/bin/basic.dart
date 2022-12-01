void main() {
  // This function is used to print data.
  /* Muitiple
  line
  comment
  */
  print("Hello Dart");

// # Variable Name and Rules
  // #  Valide Variable;
  var name = "Sai";
  var f_name = "Rahul";
  var address1 = "Telangana";
  var $money = 100;

  // # Invalide Variable;
  // var 1person = "Sumit";
  // var for = "Male";

  // #Printing Variable
  print(name);
  print(f_name);
  print(address1);
  print($money);

  // Built-in-DataTypes // checking datatype by runtimeType // converting to req datata types;
  int cart_item = 10;
  print(cart_item);

  double price = 10.50;
  print(price);
  double rupee = 10;
  print(rupee);

  String city = "Hyderabad";
  print(city);

  bool is_completed = true;
  print(is_completed);
  bool is_login = false;
  print(is_login);

  var price_r = 100.98;
  print(price_r);
  print(price_r.runtimeType);
  var quantity = 90;
  print(quantity);
  print(quantity.runtimeType);
  var desc = "Happy Learning";
  print(desc);
  print(desc.runtimeType);
  var know_python = true;
  print(know_python);
  print(know_python.runtimeType);

  // req datatypes (string - Int);
  String a = "10";
  int need = (int.parse(a));
  print(need.runtimeType);

  String a1 = "10";
  double need1 = (double.parse(a1));
  print(need1);
  print(need1.runtimeType);

  // double k = 10.8;
  // String j = String.parse(k)
  // print(j);
  // print(j.runtimeType);
}
