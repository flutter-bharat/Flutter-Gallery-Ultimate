import 'package:flutter/material.dart';

class CustomScrollViewFile extends StatefulWidget {
  @override
  _CustomScrollViewFileState createState() => _CustomScrollViewFileState();
}

class _CustomScrollViewFileState extends State<CustomScrollViewFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom ScrollView'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width*0.95,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width*0.95,
                color: Colors.teal,
              ),
              SizedBox(
                height: 10,
              ),Container(
                height: 100,
                width: MediaQuery.of(context).size.width*0.95,
                color: Colors.orange,
              ),
              SizedBox(
                height: 10,
              ),Container(
                height: 100,
                width: MediaQuery.of(context).size.width*0.95,
                color: Colors.green,
              ),
              SizedBox(
                height: 10,
              ),Container(
                height: 100,
                width: MediaQuery.of(context).size.width*0.95,
                color: Colors.pink,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width*0.95,
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width*0.95,
                color: Colors.teal,
              ),
              SizedBox(
                height: 10,
              ),Container(
                height: 100,
                width: MediaQuery.of(context).size.width*0.95,
                color: Colors.orange,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
