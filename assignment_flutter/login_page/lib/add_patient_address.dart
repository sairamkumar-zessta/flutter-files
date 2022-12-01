import 'package:flutter/material.dart';

class AddressDetails extends StatefulWidget {
  static const routeName = 'patient-cont';
  const AddressDetails({super.key});

  @override
  State<AddressDetails> createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  String req = 'sc1';
  String age = '';
  String gender = '';
  Color btn1B = const Color(0xFFF0F0F0);
  Color btn2B = const Color(0xFFF0F0F0);
  Color btn1T = const Color(0xFF002780);
  Color btn2T = const Color(0xFF002780);
  Widget textField(String hint) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        // controller: name,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          hintText: hint,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return req == 'sc1'
        ? Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Add household contacts and basic clinical information',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0D0D0D),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        req = 'sc2';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF002780),
                    ),
                    child: const Text('+ Add Contact'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            DefaultTabController.of(context)!.animateTo(0);
                          },
                          child: const Text('Previous')),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              req = 'sc3';
                            });
                          },
                          child: const Text('Skip'))
                    ],
                  )
                ]),
          )
        : req == 'sc2'
            ? SingleChildScrollView(
                child: Container(
                  margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Add household contacts and basic\nclinical information',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Name',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      textField('Enter Patient Name'),
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
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
                                    DropdownMenuItem(
                                        value: '18', child: Text('18')),
                                    DropdownMenuItem(
                                        value: '19', child: Text('19')),
                                    DropdownMenuItem(
                                        value: '20', child: Text('20')),
                                    DropdownMenuItem(
                                        value: '21', child: Text('21')),
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Diabetes Melitus',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      textField('Diabetes Deatails'),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Hypertension',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      textField('Hypertension Deatails'),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Conditions patient relates to',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text('Heart Disease')),
                          ElevatedButton(
                              onPressed: () {},
                              child: const Text('Lung Disease'))
                        ],
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text('Any Hospitalization Last Year')),
                      ElevatedButton(
                          onPressed: () {}, child: const Text('None')),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Any Other Conditions',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                      TextFormField(
                        // controller: name,
                        maxLines: 3,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Describe Condition(Optional)',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  req = 'sc1';
                                });
                              },
                              child: const Text('Previous')),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  req = 'sc3';
                                });
                              },
                              child: const Text('next')),
                        ],
                      )
                    ],
                  ),
                ),
              )
            : Container(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Add household contacts and basic clinical information',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0D0D0D),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        width: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Abhinav Kanukuntla',
                                  style: TextStyle(
                                      color: Color(0xFF002780),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '22 Yrs Old/M',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            req = 'sc2';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF002780),
                        ),
                        child: const Text('+ Add Another Contact'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                DefaultTabController.of(context)!.animateTo(0);
                              },
                              child: const Text('Previous')),
                          ElevatedButton(
                              onPressed: () {
                                DefaultTabController.of(context)!.animateTo(2);
                              },
                              child: const Text('Next'))
                        ],
                      ),
                    ]),
              );
  }
}
