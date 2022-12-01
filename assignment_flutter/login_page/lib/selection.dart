import 'package:flutter/material.dart';
import './login.dart';

class MySelection extends StatelessWidget {
  static const routeName = '/selection-page';
  const MySelection({super.key});

  void locateLoginPage(BuildContext ctx) {
    // Navigator.push(
    //     ctx, MaterialPageRoute(builder: (context) => const MyLogin()));
    Navigator.of(ctx).pushNamed(MyLogin.routeName);
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
            body: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Container(
                  padding: const EdgeInsets.only(top: 100, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Covid-19',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF002780),
                              fontWeight: FontWeight.bold)),
                      const Text('Health',
                          style: TextStyle(
                              fontSize: 44,
                              color: Color(0xFF002780),
                              fontWeight: FontWeight.bold)),
                      const Text('Monitor',
                          style: TextStyle(
                              fontSize: 44,
                              color: Color(0xFF008D36),
                              fontWeight: FontWeight.bold)),
                      const Text('Your Health Partner',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF002780),
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 326,
                        width: 326,
                        child: Card(
                            margin: const EdgeInsets.only(top: 100),
                            color: Colors.white,
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(25),
                              child: Column(
                                children: [
                                  const Text(
                                    'I\'m a',
                                    style: TextStyle(
                                      color: Color(0xFF002780),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15, left: 15, bottom: 10),
                                            child: FloatingActionButton.large(
                                              heroTag: "btn1",
                                              backgroundColor: Colors.white,
                                              onPressed: () {
                                                return locateLoginPage(context);
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Image.asset(
                                                  'assets/images/doctor.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 8),
                                            child: Text(
                                              'Doctor',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xFF002780),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15, left: 40, bottom: 10),
                                            child: FloatingActionButton.large(
                                              heroTag: "btn2",
                                              onPressed: () {},
                                              backgroundColor: Colors.white,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                child: Image.asset(
                                                  'assets/images/patient.png',
                                                  fit: BoxFit.cover,
                                                  // height:
                                                  // width:
                                                  // color: Colors.red,
                                                  // colorBlendMode: BlendMode.darken,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 35),
                                            child: Text(
                                              'Patient',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF002780),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
