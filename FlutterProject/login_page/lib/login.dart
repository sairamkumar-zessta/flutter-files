import 'package:flutter/material.dart';
import 'package:login_page/selection.dart';
import './doctor_list.dart';

class MyLogin extends StatelessWidget {
  static const routeName = '/login-page';
  const MyLogin({super.key});

  void selectDoctor(BuildContext ctx) {
    // Navigator.push(ctx, MaterialPageRoute(builder: (context) => MyDoctor()));
    Navigator.of(ctx).pushNamed(MyDoctor.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 40),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(MySelection.routeName);
                  },
                  child: const Text('<  Login',
                      style: TextStyle(
                          fontSize: 22,
                          color: Color(0xFF002780),
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 40, bottom: 20, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 44,
                        color: Color(0xFF002780),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Doc!',
                    style: TextStyle(
                        fontSize: 44,
                        color: Color(0xFF008D36),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(30),
              child: const Text(
                'Please provide your login credentials',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF0D0D0D),
                    fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.all(8),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email ID or Phone Number',
                  hintStyle: const TextStyle(
                      color: Color(0xFF727272),
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  filled: true,
                  fillColor: const Color(0xFFF0F0F0),
                ),
              ),
            ),
            Container(
              height: 50,
              margin: const EdgeInsets.only(
                  top: 10, left: 8, right: 10, bottom: 50),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                        color: Color(0xFF727272),
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    filled: true,
                    fillColor: const Color(0xFFF0F0F0),
                    suffixIcon: const Icon(Icons.visibility_off)),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF002780),
                  padding: const EdgeInsets.all(12),
                  alignment: Alignment.center,
                  elevation: 5,
                  shadowColor: Colors.blue,
                ),
                onPressed: () {
                  return selectDoctor(context);
                },
                child: const Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                )),
          ]),
        ),
      ),
    );
  }
}
