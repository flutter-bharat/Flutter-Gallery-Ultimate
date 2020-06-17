import 'package:flutter/material.dart';

class CustomStepper extends StatefulWidget {
  @override
  _CustomStepperState createState() => _CustomStepperState();
}

class _CustomStepperState extends State<CustomStepper> {
  int currentStep = 0;
  List<Step> steps = [
    Step(title: Text("Step 1"), content: Text('Hello'), isActive: true),
    Step(title: Text("Step 2"), content: Text('You\'re going great'), isActive: true),
    Step(title: Text("Step 3"), content: Text('Just one step is left'), isActive:  true),
    Step(title: Text("Step 4"), content: Text('Ready to move'), isActive: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Stepper'),
      ),
      body: Container(
        child: Stepper(
          onStepTapped: (val) {
            setState(() {
              currentStep = val;
            });
          },
          steps: steps,
          type: StepperType.vertical,
          currentStep: currentStep,
          onStepContinue: () {
            if (currentStep == steps.length - 1) {
              setState(() {
                currentStep = 0;
              });
            } else
              setState(() {
                currentStep++;
              });
          },
          onStepCancel: () {
            if (currentStep != 0) {
              setState(() {
                currentStep--;
              });
            }
          },
        ),
      ),
    );
  }
}
