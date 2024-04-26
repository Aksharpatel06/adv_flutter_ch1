import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/golbal_variable.dart';

class HorizontalStepperScreen extends StatefulWidget {
  const HorizontalStepperScreen({super.key});

  @override
  State<HorizontalStepperScreen> createState() => _HorizontalStepperScreenState();
}

class _HorizontalStepperScreenState extends State<HorizontalStepperScreen> {
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
        type: StepperType.horizontal,
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
            title: Text('Personal'),
            content: Column(
              children: [
                Row(
                  children: [
                    Icon(CupertinoIcons.person),
                    SizedBox(width: 15,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Name',
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).secondaryHeaderColor))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Icon(CupertinoIcons.calendar),
                    SizedBox(width: 15,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'DOB',
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).secondaryHeaderColor))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
              ],
            ),
          ),
          Step(
            title: Text('Contact'),
            content: Column(
              children: [
                Row(
                  children: [
                    Icon(CupertinoIcons.mail),
                    SizedBox(width: 15,),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Email',
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).secondaryHeaderColor))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Icon(CupertinoIcons.home),
                    SizedBox(width: 15,),
                    Expanded(
                      child: TextField(
                        minLines: 1,
                        maxLines: 4,
                        decoration: InputDecoration(
                            hintText: 'Address',
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).secondaryHeaderColor))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Icon(CupertinoIcons.phone),
                    SizedBox(width: 15,),
                    Expanded(
                      child: TextField(
                        minLines: 1,
                        maxLines: 4,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: 'Mobile number',
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).secondaryHeaderColor))),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
              ],
            ),
          ),
          Step(
              title: Text('Upload'),
              content: Text('Welcome To App',style: Theme.of(context).textTheme.titleLarge,)),
        ],
      ),
    );
  }
}
