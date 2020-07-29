import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Divider/divider.dart';
import 'package:flutter_gallery_ultimate/Divider/dividercode.dart';
import 'package:flutter_gallery_ultimate/Divider/dividerdescription.dart';


class DividerOutput extends StatefulWidget {
  @override
  _DividerOutputState createState() => _DividerOutputState();
}

class _DividerOutputState extends State<DividerOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          DividerDescription(),
          DividerWidget(),
          DividerCode(),
        ],
      ),
    );
  }
}
