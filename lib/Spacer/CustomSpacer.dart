import 'package:flutter/material.dart';

class CustomSpacer extends StatefulWidget {
  @override
  _CustomSpacerState createState() => _CustomSpacerState();
}

class _CustomSpacerState extends State<CustomSpacer> {

  double height= 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Spacer'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [

            Spacer(),
            Text('There is a spacer above me'),
            Text('Scroll to increase the height of SizedBox below me', textAlign: TextAlign.center,),
            Slider(
              label: "",
                min: 50,
                max: 300,
                value: height, onChanged: (val){
              setState(() {
                height= val;
              });
            }),
            SizedBox(
              height: height,
            ),

          ],
        ),
      ),
    );
  }
}
