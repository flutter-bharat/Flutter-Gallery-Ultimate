import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Prince/ListModal.dart';

class CustomAppbar extends StatefulWidget {
  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  String title = "Appbar";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Color(0xff303f9f),
        ),
        body: Center(
          child: Text('This is an example of Appbar'),
        )
    
    );
  }
}
