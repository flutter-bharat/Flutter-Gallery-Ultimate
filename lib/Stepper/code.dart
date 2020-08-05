import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class StepperCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
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
    ''';


    return Scaffold(
     appBar: customizedAppBar("Code"),
      body: ListView(
        children: [
        HighlightView(
        // The original code to be highlighted
        code,

        // Specify language
        // It is recommended to give it a value for performance
        language: 'dart',

        // Specify highlight theme
        // All available themes are listed in `themes` folder
          theme: googlecodeTheme   ,

        // Specify padding
        padding: EdgeInsets.all(12),

        // Specify text style
        textStyle: TextStyle(
          fontFamily: 'My awesome monospace font',
          fontSize: 16,
        ),
        ),
        ],
      ),
    );
  }
}
