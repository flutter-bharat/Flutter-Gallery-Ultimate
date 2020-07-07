import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Stepper/code.dart';
import 'package:flutter_gallery_ultimate/Stepper/description.dart';
import 'package:flutter_gallery_ultimate/Stepper/stepper.dart';


class StepperOutput extends StatefulWidget {
  @override
  _StepperOutputState createState() => _StepperOutputState();
}

class _StepperOutputState extends State<StepperOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          StepperDescription(),
          StepperWidget(),
          StepperCode(),
        ],
      ),
    );
  }
}
