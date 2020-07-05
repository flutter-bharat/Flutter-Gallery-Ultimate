import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {
  @override
  _ColumnWidgetState createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Column"),
        centerTitle: true,
      ),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is the column Widgit: Item 1",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,color: Colors.red),),
              SizedBox(height: 100.0),
              Text("This is the column Widget: Item 2",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,color: Colors.green)),
              SizedBox(height: 100.0),
              Text("This is the column Widget: Item 3",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,color: Colors.blue)),
          ],
        ),
        ),
      ),
    );
  }
}
