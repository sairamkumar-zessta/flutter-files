void main() {
  // #for loop
//for(intial_value; condition; inc/dec){}
  var a = 0;
  for (var i = 0; i < 5; i++) {
    a += 1;
  }
  ;
  print(a);
  // for-in loop;
  var student = ['sai', 'Ram', 'Kumar'];
  print(student);
  for (var each in student) {
    print(each);
  }

// for-in Set
  var student_set = {'sai', 'Ram', 'Kumar'};
  for (var each in student_set) {
    print(each);
  }

// for-in-Map
  var address = {'name': 'Sai', 'city': 'Nirmal', 'state': 'Telangana'};
  List list_keys = <String>[];
  for (var key in address.keys) {
    list_keys.add(key);
  }
  print(list_keys);

  List list_values = <String>[];
  for (var value in address.values) {
    list_values.add(value);
  }
  print(list_values);
  // ##While Loop;
  var n = 1;
  while (n <= 5) {
    print('Number $n');
    n++;
  }

  // ##do-while loop -one time code executed compulsory.
  var k = 0;
  do {
    print("number $k");
    k++;
  } while (k <= 3);

  // ## foreach with list
  var student_list = ['sai', 'Ram', 'Kumar'];
  student_list.forEach((element) => print(element));

  print(student_list.asMap());
  student_list.asMap().forEach((i, value) => print('$value,$i'));

  // ## foreach with set
  var student_set1 = {'sai', 'Ram', 'Kumar'};
  student_set1.forEach((value) => print(value));

  //## foreach with Map
  var address1 = {'name': 'Sai', 'city': 'Nirmal', 'state': 'Telangana'};
  address1.forEach((key, value) => print('$key = $value'));

  // #Break and continue
  var is_fetching = true;
  var p = 0;
  while (is_fetching) {
    p++;
    if (p == 5) {
      break;
    }
    print("Data Fetching.....$p ");
  }

  var is_fetching1 = true;
  var q = 0;
  while (is_fetching1) {
    q++;
    if (q == 5) {
      continue;
    } else if (q == 10) {
      break;
    }
    print("Data Fetching.....$q ");
  }

  //  #Switch and Case
  var command = '';
  switch (command) {
    case 'Closed':
      print('Complaint Ticket Closed');
      break;
    case 'Pending':
      print('Complaint Ticket Pending');
      break;
    case 'Denied':
      print('Complaint Ticket Denied');
      break;
    case 'Opened':
      print('Complaint Ticket Open');
      break;
    default:
      print('Inavalid Complaint Ticket');
  }
}
