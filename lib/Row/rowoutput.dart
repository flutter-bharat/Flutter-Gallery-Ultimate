import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Row/code.dart';
import 'package:flutter_gallery_ultimate/Row/description.dart';
import 'package:flutter_gallery_ultimate/Row/row.dart';


class RowOutput extends StatefulWidget {
  @override
  _RowOutputState createState() => _RowOutputState();
}

class _RowOutputState extends State<RowOutput> {
  @override
  PageController _controller  = PageController(initialPage: 1);
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          RowDescription(),
          RowWidget(),
          RowCode(),
        ],
      ),
    );
  }
}
