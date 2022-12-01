void main() {
// #String
  String name = 'Sonam';
  print(name);
  print(name.runtimeType);

  String name1 = "Rahul";
  print(name1);
  print(name1.runtimeType);

  var name2 = '''sai''';
  print(name2);
  print(name2.runtimeType);

  var s1 = 'It\'s a language';
  print(s1);

  var s2 = "It\'s a language";
  print(s2);

  var s3 = "It\n's a language";
  print(s3);

  //##multiline String
  var mstr = '''This is 
multi line
string1''';
  print(mstr);

  var mstr1 = """This is 
multi line
string2""";
  print(mstr1);

  // ## Expression inside string
  var name3 = 'Sai';
  print('${name3}');
  print('$name3');
  print('My Name is ${name3}');
  print('My Name is $name3');
  print('My Name is ${name3.toUpperCase()}');
  print('My Name is $name3 and I am a Python developer.');

  var city = "Nirmal";
  print('Hello My Name is $name3 I am from $city.');

  // ## String Concatination
  print('Hello' + ' ' + "Dart");
  var str1 = 'Hello';
  var str2 = 'Sai';
  print(str1 + ' ' + str2);

  // ## Row String
  var s = 'In a string, \n gets special treatment.';
  var s_r = r'In a raw string, not even \n gets special treatment.';
  print(s);
  print(s_r);

  // ## String Properties and Methods
  var name4 = 'Anil';
  print(name4.length);
  print(name4.isEmpty);
  print(name4.isNotEmpty);
  print(name4.toUpperCase());
  print(name4.toLowerCase());
  print(name4.contains('n'));
  print(name4.padLeft(10));
  print(name4.padRight(10));

  var str3 = '   Hello  ';
  print(str3);
  print(str3.trim()); // strip equalent.
  // print(str3.trimLeft());
  print(str3.trimRight());

  var str4 = 'Hello This is sai';
  print(str4.split(' '));
}
