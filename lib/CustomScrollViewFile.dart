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
                height: 120,
                child: Text('Hello'),
              ),
              Container(
                height: 120,
                child: Text('Hello'),
              ),
              Container(
                height: 120,
                child: Text('Hello'),
              ),
              Container(
                height: 120,
                child: Text('Hello'),
              ),Container(
                height: 120,
                child: Text('Hello'),
              ),Container(
                height: 120,
                child: Text('Hello'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
