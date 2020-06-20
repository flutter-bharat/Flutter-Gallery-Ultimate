

import 'package:flutter/material.dart';


class StepperWidget extends StatefulWidget {
  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Stepper(
              currentStep: _currentStep,
              onStepContinue: (){
                if(_currentStep >= 4)
                {
                  return ;
                }else
                setState(() {
                  _currentStep += 1; 
                });
              },
              onStepCancel: (){
                if(_currentStep <= 0) return;
                setState(() {
                  _currentStep -= 1;
                });  
              },
              steps: [
                Step(
                  title: Text("Step 1"),
                  content: SizedBox(
                    width: 100.0,
                    height: 100.0,
                  ),
                  ),
                Step(
                  title: Text('Step 2'),
                  content: SizedBox(
                    width: 100.0,
                    height: 100.0,
                  ),
                  ),
                Step(
                  title: Text('Step 3'),
                  content: SizedBox(
                    width: 100.0,
                    height: 100.0,
                  ),
                  ),
                Step(
                  title: Text('Step 4'),
                  content: SizedBox(
                    width: 100.0,
                    height: 100.0,
                  ),
                  ),  
                Step(
                  title: Text('Step 5'),
                  content: SizedBox(
                    width: 100.0,
                    height: 100.0,
                  ),
                  ),    
              ],
              ), 
            ),
        ],
      ),
    );
  }
}