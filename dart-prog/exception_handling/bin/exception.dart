// ignore_for_file: deprecated_member_use, duplicate_ignore

/*
try { 
   // program that might throw an exception 
}  
on Exception1 { 
   // code for handling exception 1
}  
catch Exception2 { 
   // code for handling exception 2
}
*/

void main() {
  // var result = 4 ~/ 0;
  // print(result); unhandled exception;

  // ## try on
  // ignore: duplicate_ignore
  try {
    var result = 4 ~/ 0;
    print(result);
    // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException {
    print('Error!!! \nCannot divide a number by  zero');
  }
// try,catch.
  var geek = 4;
  try {
    var geek2 = geek ~/ 0;
    print(geek2);
  } catch (e) {
    print(e);
  }

// try,catch,final
  int geek1 = 10;
  try {
    var geek3 = geek1 ~/ 0;
    print(geek3);
  } on IntegerDivisionByZeroException catch (e) {
    print(e);
  } finally {
    print("Code is at end");
  }
}
