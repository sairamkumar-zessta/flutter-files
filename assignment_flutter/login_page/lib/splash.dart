import 'package:flutter/material.dart';
import './selection.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2500), () {});
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const MySelection()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/background.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [Colors.white70, Colors.white10],
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
                height: double.infinity,
                width: double.infinity,
                padding: const EdgeInsets.all(32),
                child: Container(
                  padding: const EdgeInsets.only(top: 150, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Covid-19',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF002780),
                              fontWeight: FontWeight.bold)),
                      Text('Health',
                          style: TextStyle(
                              fontSize: 44,
                              color: Color(0xFF002780),
                              fontWeight: FontWeight.bold)),
                      Text('Monitor',
                          style: TextStyle(
                              fontSize: 44,
                              color: Color(0xFF008D36),
                              fontWeight: FontWeight.bold)),
                      Text('Your Health Partner',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF002780),
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
