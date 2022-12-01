// import 'package:flutter/widgets.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class Auth with ChangeNotifier {
//   String? token;
//   DateTime? expiryDate;
//   String? userId;

//   bool get isAuth {
//     return token != null;
//   }

//   String? get getToken {
//     if (expiryDate != null &&
//         expiryDate!.isAfter(DateTime.now()) &&
//         token != null) {
//       return token;
//     }
//     return null;
//   }

//   Future<void> login(String email, String password) async {
//     final url = Uri.parse(
//         'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBlfrT7sPyFth2Kznman449SS5fPWKeDdg');
//     final response = await http.post(
//       url,
//       body: json.encode(
//         {
//           'email': email,
//           'password': password,
//           'returnSecureToken': true,
//         },
//       ),
//     );
//     final responseData = json.decode(response.body);
//     token = responseData['idToken'];
//     userId = responseData['localId'];
//     expiryDate = DateTime.now()
//         .add(Duration(seconds: int.parse(responseData['expiresIn'])));
//     notifyListeners();
//     // print(json.decode(response.body));
//   }

//   Future<void> signup(String email, String password) async {
//     final url = Uri.parse(
//         'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBlfrT7sPyFth2Kznman449SS5fPWKeDdg');
//     final response = await http.post(
//       url,
//       body: json.encode(
//         {
//           'email': email,
//           'password': password,
//           'returnSecureToken': true,
//         },
//       ),
//     );
//     // print(json.decode(response.body));
//   }
// }
