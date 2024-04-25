import 'package:adv_flutter_ch1/utils/golbal_variable.dart';
import 'package:flutter/material.dart';

class StepperScreen extends StatefulWidget {
  const StepperScreen({super.key});

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {
  @override
  Widget build(BuildContext context) {
    int currentStep = GlobalVariable.stepperIndex;
    if (currentStep < 0 || currentStep > 2) {
      currentStep = 0;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Stepper Demo'),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Stepper(
        currentStep: GlobalVariable.stepperIndex,
        connectorColor: MaterialStateColor.resolveWith((states) => Colors.blue),
        onStepCancel: () {
          setState(() {
            if (GlobalVariable.stepperIndex > 0) {
              GlobalVariable.stepperIndex--;
            }
          });
        },
        onStepContinue: () {
          setState(() {
            GlobalVariable.stepperIndex = (GlobalVariable.stepperIndex + 1) % 3;
          });
        },
        onStepTapped: (value) {
          setState(() {
            GlobalVariable.stepperIndex = value;
          });
        },
        steps: [
          Step(
              title: Text('Account'),
              content: TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).secondaryHeaderColor))),
              )),
          Step(
              title: Text('Address'),
              content: TextField(
                decoration: InputDecoration(border: UnderlineInputBorder()),
              )),
          Step(
              title: Text('Mobile Number'),
              content: TextField(
                decoration: InputDecoration(border: UnderlineInputBorder()),
              )),
        ],
      ),
    );
  }
}
