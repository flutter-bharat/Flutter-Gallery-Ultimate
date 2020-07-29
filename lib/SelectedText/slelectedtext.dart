import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectedTextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tooltip"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           SelectableText(
             "Long Press Me, I am Selectable",
             textAlign: TextAlign.center,
             style: TextStyle(fontSize: 16.0),
           ),
         ],
        ),
      ),
    );
  }
}
