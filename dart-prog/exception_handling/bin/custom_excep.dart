// // extending Class Age
// // with Exception class
// class Age implements Exception {
//   String error() => 'Geek, your age is less than 18 :(';
// }

// void main() {
//   int geek_age1 = 20;
//   int geek_age2 = 10;
//   var e = Age();
//   try {
//     // Checking Age and
//     // calling if the
//     // exception occur
//     check(geek_age1);
//     check(geek_age2);
//   } catch (e) {
//     // Printing error
//     print(e.error());
//   }
// }

// // Checking Age
// void check(int age) {
//   if (age < 18) {
//     throw new Age();
//   } else {
//     print("You are eligible to visit GeeksForGeeks :)");
//   }
// }
