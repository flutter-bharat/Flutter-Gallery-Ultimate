import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {

   double _value = 20;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250.0,
              height: 100.0,
              child: CupertinoSlider(
                value: _value,
                min: 0,
                max: 100,
                activeColor: Colors.green,
                onChanged: (double value){
                  setState(() {
                    _value = value;
                  });
                },
                onChangeStart: (v) {},
                onChangeEnd: (v) {},
              ),
            ),
            Text('Slider Value: ${_value.toStringAsFixed(1)}',style: TextStyle(fontSize: 20.0),),
          ],
        ),
      ),
    );
  }
}