import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/FlatButton/CustomFlatButton.dart';
import 'package:flutter_gallery_ultimate/FlatButton/code.dart';
import 'package:flutter_gallery_ultimate/FlatButton/description.dart';


class FlatButtonOutput extends StatefulWidget {
  @override
  _FlatButtonOutputState createState() => _FlatButtonOutputState();
}

class _FlatButtonOutputState extends State<FlatButtonOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          FlatButtonDescription(),
          CustomFlatButton(),
          FlatButtonCode(),
        ],
      ),
    );
  }
}
