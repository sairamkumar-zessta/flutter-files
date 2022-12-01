import 'package:flutter/material.dart';
import './patient_details.dart';
import 'package:provider/provider.dart';
// import './doctor_list.dart';

class AddPatientDetails extends StatefulWidget {
  const AddPatientDetails({super.key});

  @override
  State<AddPatientDetails> createState() => _AddPatientDetailsState();
}

class _AddPatientDetailsState extends State<AddPatientDetails> {
  final _form = GlobalKey<FormState>();
  var _isLoading = false;
  var _editedDet = PatientDetails(
    id: '',
    name: '',
    date: DateTime.now(),
    gender: '',
    age: 0,
    status: '',
  );

  void _saveForm() {
    _form.currentState!.save();
    setState(() {
      _isLoading = true;
    });

    Provider.of<Patients>(context, listen: false)
        .addDetails(_editedDet)
        .catchError((error) {
      return showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                title: const Text('An error occurred!'),
                content: const Text('Something owent wrong!'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Okay'),
                  )
                ],
              ));
    }).then((_) {
      setState(() {
        _isLoading = false;
      });
      Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                  key: _form,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                        TextFormField(
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
                          onSaved: (value) {
                            _editedDet = PatientDetails(
                                id: _editedDet.id,
                                name: value as String,
                                date: _editedDet.date,
                                gender: _editedDet.gender,
                                age: _editedDet.age,
                                status: _editedDet.status);
                          },
                        ),
                        // DropdownButtonFormField(
                        //   value: _value,
                        //   items: const [
                        //     DropdownMenuItem(value: '', child: Text('Select >')),
                        //     DropdownMenuItem(value: 18, child: Text('18')),
                        //     DropdownMenuItem(value: 19, child: Text('19')),
                        //     DropdownMenuItem(value: 20, child: Text('20')),
                        //     DropdownMenuItem(value: 20, child: Text('21')),
                        //   ],
                        //   onChanged: (value) {},
                        // )
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Age',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Enter Age',
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
                          onSaved: (value) {
                            _editedDet = PatientDetails(
                                id: _editedDet.id,
                                name: _editedDet.name,
                                date: _editedDet.date,
                                gender: _editedDet.gender,
                                age: int.parse(value as String),
                                status: _editedDet.status);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Gender',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.text,
                          maxLength: 1,
                          decoration: InputDecoration(
                            hintText: 'Enter Gender',
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
                          onSaved: (value) {
                            _editedDet = PatientDetails(
                                id: _editedDet.id,
                                name: _editedDet.name,
                                date: _editedDet.date,
                                gender: value as String,
                                age: _editedDet.age,
                                status: _editedDet.status);
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Intial Covid Status',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 16),
                          ),
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.done,
                          keyboardType: TextInputType.text,
                          maxLength: 3,
                          onFieldSubmitted: (_) {
                            _saveForm();
                          },
                          decoration: InputDecoration(
                            hintText: 'Enter Covid Status',
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
                          onSaved: (value) {
                            _editedDet = PatientDetails(
                              id: '',
                              name: _editedDet.name,
                              date: _editedDet.date,
                              gender: _editedDet.gender,
                              age: _editedDet.age,
                              status: value as String,
                            );
                          },
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF002780),
                            ),
                            onPressed: _saveForm,
                            child: (const Text('Add Patient Details')))
                      ],
                    ),
                  )),
            ),
    );
  }
}
