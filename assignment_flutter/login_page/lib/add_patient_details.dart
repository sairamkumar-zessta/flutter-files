import 'package:flutter/material.dart';
import 'package:login_page/enter_details.dart';
import './doctor_list.dart';
import 'package:provider/provider.dart';

class AddPatientDetails extends StatefulWidget {
  static const routeName = '/patient-det';
  const AddPatientDetails({super.key});

  @override
  State<AddPatientDetails> createState() => _AddPatientDetailsState();
}

class _AddPatientDetailsState extends State<AddPatientDetails> {
  final name = TextEditingController();
  String age = "";
  String gender = "";
  String status = "";
  Color btn1B = const Color(0xFFF0F0F0);
  Color btn2B = const Color(0xFFF0F0F0);
  Color btn1T = const Color(0xFF002780);
  Color btn2T = const Color(0xFF002780);
  Color sel1B = const Color(0xFFF0F0F0);
  Color sel2B = const Color(0xFFF0F0F0);
  Color sel1T = const Color(0xFF002780);
  Color sel2T = const Color(0xFF002780);

  // final age = TextEditingController()
  var req = List<int>.generate(100, (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  controller: name,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Enter Patient Name',
                    hintStyle: const TextStyle(
                        color: Color(0xFF727272),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    filled: true,
                    fillColor: const Color(0xFFF0F0F0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Phone Number',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 50,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'Enter Patient Phone Number',
                    hintStyle: const TextStyle(
                        color: Color(0xFF727272),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    filled: true,
                    fillColor: const Color(0xFFF0F0F0),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Age',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        width: 120,
                        height: 40,
                        child: DropdownButtonFormField(
                          value: age,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                                top: -3, bottom: -3, left: 20),
                            hintText: 'Enter Age',
                            hintStyle: const TextStyle(
                                color: Color(0xFF727272),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(5)),
                            filled: true,
                            fillColor: const Color(0xFFF0F0F0),
                          ),
                          items: const [
                            DropdownMenuItem(
                                value: '',
                                child: Text(
                                  'Select',
                                  style: TextStyle(),
                                )),
                            DropdownMenuItem(value: '18', child: Text('18')),
                            DropdownMenuItem(value: '19', child: Text('19')),
                            DropdownMenuItem(value: '20', child: Text('20')),
                            DropdownMenuItem(value: '21', child: Text('21')),
                          ],
                          onChanged: (value) {
                            age = value!;
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Gender',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: ElevatedButton.icon(
                                icon: Icon(
                                  Icons.male_outlined,
                                  color: btn1T,
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: btn1B),
                                onPressed: () {
                                  gender = 'M';
                                  setState(() {
                                    btn1B = const Color(0xFF002780);
                                    btn1T = Colors.white;
                                    btn2B = const Color(0xFFF0F0F0);
                                    btn2T = const Color(0xFF002780);
                                  });
                                },
                                label: Text(
                                  'Male',
                                  style: TextStyle(color: btn1T),
                                )),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton.icon(
                              icon: Icon(
                                Icons.female_outlined,
                                color: btn2T,
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: btn2B),
                              onPressed: () {
                                setState(() {
                                  btn2B = const Color(0xFF002780);
                                  btn2T = Colors.white;
                                  btn1B = const Color(0xFFF0F0F0);
                                  btn1T = const Color(0xFF002780);
                                });
                                gender = 'F';
                              },
                              label: Text(
                                'Female',
                                style: TextStyle(color: btn2T),
                              )),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Intial COVID Status',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            sel1B = const Color(0xFF002780);
                            sel1T = Colors.white;
                            sel2B = const Color(0xFFF0F0F0);
                            sel2T = const Color(0xFF002780);
                          });
                          status = '-ve';
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          backgroundColor: sel1B,
                        ),
                        child: Text(
                          '-VE',
                          style: TextStyle(color: sel1T),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            backgroundColor: sel2B),
                        onPressed: () {
                          setState(() {
                            sel2B = const Color(0xFF002780);
                            sel2T = Colors.white;
                            sel1B = const Color(0xFFF0F0F0);
                            sel1T = const Color(0xFF002780);
                          });
                          status = '+ve';
                        },
                        child: Text(
                          '+VE',
                          style: TextStyle(color: sel2T),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF002780),
                ),
                onPressed: () {},
                child: (const Text(
                  '+ Upload Image',
                )),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(18)))),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(MyDoctor.routeName);
                      },
                      child: const Text('Previous')),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF002780),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {
                        DefaultTabController.of(context)!.animateTo(1);
                        final details =
                            Provider.of<Details>(context, listen: false);
                        details.addDetails(name.text, age, gender, status);
                        print(details.details);
                      },
                      child: const Text('Next'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
