import 'package:flutter/material.dart';

class ToolTipWidget extends StatelessWidget {
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
            Text("Long Press for popup prompt",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
            SizedBox(height: 20.0),
            Tooltip(
                message: "accessibility tooltip",
              verticalOffset: 48,
              child: Icon(
                Icons.accessibility,
                size: 50.0,
              ),
            ),
          ],
        ),
      )
    );
  }
}
