import 'package:flutter/material.dart';
import 'package:login_page/login.dart';
import './tab_bar_screen.dart';
import './patient_details.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class MyDoctor extends StatefulWidget {
  static const routeName = '/doctor-page';
  const MyDoctor({super.key});

  @override
  State<MyDoctor> createState() => _MyDoctorState();
}

class _MyDoctorState extends State<MyDoctor> {
  void selectTab(BuildContext ctx) {
    // Navigator.push(ctx, MaterialPageRoute(builder: (context) => MyDoctor()));
    Navigator.of(ctx).pushNamed(TabBarScreen.routeName);
  }

  // final List<PatientDetails> listPatients = [
  @override
  Widget build(BuildContext context) {
    final totalPatients = Provider.of<Patients>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text(
                        'Health',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF002780),
                        ),
                      ),
                      const Text(
                        'Monitor',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF008D36),
                        ),
                      ),
                      Image.asset(
                        'assets/images/image1.jpeg',
                        width: 50,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/logout.png',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (ctx) => AlertDialog(
                                  title: const Text('Are you sure?'),
                                  content: const Text('Doyou want to Logout?'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop(false);
                                      },
                                      child: const Text('No'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                        Navigator.of(ctx).pushReplacementNamed(
                                            MyLogin.routeName);
                                      },
                                      child: const Text('Yes'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: const Text(
                              'Logout',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color(0xFF002780),
                              ),
                            )),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Welcome\nDr.Gupta!',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF002780),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                          color: const Color(0xFF002780),
                          borderRadius: BorderRadius.circular(40)),
                      child: Image.asset(
                        'assets/images/doctor_list.png',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Color(0xFFD2EAFA),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                margin: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Total Number of \nPatients',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D0D0D),
                      ),
                    ),
                    Text(
                      '124',
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF002780),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 020),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Your Patients',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF0D0D0D),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        return selectTab(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF002780),
                        padding: const EdgeInsets.only(
                            top: 12, bottom: 12, left: 30, right: 30),
                        alignment: Alignment.centerLeft,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        '+ add new',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Search Patients',
                      hintStyle: const TextStyle(
                          color: Color(0xFF727272),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: const Color(0xFFF0F0F0)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Showing ${totalPatients.patients.length} results',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF0D0D0D),
                  ),
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    totalPatients.patients[index].name,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF002780),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'patient ID  ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF727272),
                                      ),
                                    ),
                                    Text(
                                      totalPatients.patients[index].patientId,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF0D0D0D),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    'Added on ${DateFormat.yMMMd().format(
                                      totalPatients.patients[index].date,
                                    )}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF727272),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    '${totalPatients.patients[index].age} Yrs Old/${totalPatients.patients[index].gender}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF0D0D0D),
                                    ),
                                  ),
                                ),
                                const Text(
                                  'COVID Status',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF727272),
                                  ),
                                ),
                                Text(
                                  totalPatients.patients[index].status,
                                  style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFD90000),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: totalPatients.patients.length,
                ),
              ),
              // SizedBox(
              //   height: 200,
              //   child: ListView(
              //     children: [
              //       ...listPatients.map((e) {
              //         return Card(child: Text(e.name));
              //       }).toList()
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
