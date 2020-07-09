import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  @override
  _RowWidgetState createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Row"),
        centerTitle: true,
      ),
      body: Center(
          child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: 100.0,
                color: Colors.green[50],
                child: Center(child: Text("Item: 1",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,color: Colors.green))
                ),
          ),
            SizedBox(width: 30.0),
            Container(
              height: MediaQuery.of(context).size.height,
              width: 100.0,
              color: Colors.yellow[50],
              child: Center(child: Text("Item: 2",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,color: Colors.orange))),
            ),
            SizedBox(width: 30.0),
            Container(
              height: MediaQuery.of(context).size.height,
              width: 100.0,
              color: Colors.red[50],
              child: Center(child: Text("Item: 3",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,color: Colors.red))),
            ),
        ],
      ),
    ),
    );
  }
}
