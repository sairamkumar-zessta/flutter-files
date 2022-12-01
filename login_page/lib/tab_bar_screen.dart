import 'package:flutter/material.dart';
import 'package:login_page/patient_details.dart';
import 'package:provider/provider.dart';

class MyStepper extends StatefulWidget {
  static const routeName = '/step-screen';
  const MyStepper({super.key});

  @override
  State<MyStepper> createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int currentStep = 0;
  final name = TextEditingController();
  final gender = TextEditingController();
  final age = TextEditingController();
  final status = TextEditingController();
  final address = TextEditingController();
  final pincode = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final patient = Provider.of<Patients>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF002780),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Health Monitor',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF002780),
          ),
        ),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(primary: Color(0xFF002780))),
        child: Stepper(
          type: StepperType.horizontal,
          steps: getSteps(),
          currentStep: currentStep,
          onStepCancel: () {
            currentStep == 0
                ? null
                : setState(() {
                    currentStep -= 1;
                  });
          },
          onStepContinue: () {
            final isLastStep = currentStep == getSteps().length - 1;
            if (isLastStep) {
              patient.addPatientDeatails(
                  name.text, gender.text, age.text, status.text);
              print(name.text);
              Navigator.of(context).pop();
            } else {
              setState(() {
                currentStep += 1;
              });
            }
          },
          onStepTapped: (step) => setState(() {
            currentStep = step;
          }),
          // controlsBuilder: (context, {}) {

          // },
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          isActive: currentStep >= 0,
          state: currentStep == 0 ? StepState.editing : StepState.complete,
          title: const Text(''),
          label: const Text('PatientDetails'),
          content: Column(
            children: [
              TextFormField(
                controller: name,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              TextFormField(
                controller: age,
                decoration: const InputDecoration(labelText: 'Age'),
              ),
              TextFormField(
                controller: gender,
                decoration: const InputDecoration(labelText: 'Gender'),
              ),
              TextFormField(
                controller: status,
                decoration: const InputDecoration(labelText: 'Covid Status'),
              )
            ],
          ),
        ),
        Step(
          isActive: currentStep >= 1,
          state: currentStep <= 1 ? StepState.editing : StepState.complete,
          title: const Text(''),
          label: const Text('Contact Details'),
          content: Column(
            children: [
              TextFormField(
                controller: address,
                decoration: const InputDecoration(labelText: 'Address'),
              ),
              TextFormField(
                controller: pincode,
                decoration: const InputDecoration(labelText: 'Pincode'),
              ),
            ],
          ),
        ),
        Step(
          isActive: currentStep >= 2,
          state: currentStep < 2 ? StepState.editing : StepState.complete,
          title: const Text(''),
          label: const Text('Consent'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Name:${name.text}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'Age:${age.text}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'Gender:${gender.text}',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'CovidStatus:${status.text}',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ];
}
