import 'package:flutter/material.dart';

class CustomOpacity extends StatefulWidget {
  @override
  _CustomOpacityState createState() => _CustomOpacityState();
}

class _CustomOpacityState extends State<CustomOpacity> {

  double opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Opacity'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Opacity(
            opacity: opacity,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
            ),
          ),
          Slider(value: opacity, onChanged: (val){
            setState(() {
              opacity= val;
            },);
          },
          max: 1,
          min: 0,)
        ],
      )
      );
  }
}
