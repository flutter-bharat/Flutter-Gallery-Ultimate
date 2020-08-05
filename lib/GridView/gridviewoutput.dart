import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/GridView/code.dart';
import 'package:flutter_gallery_ultimate/GridView/description.dart';
import 'package:flutter_gallery_ultimate/GridView/gridview.dart';


class GridViewOutput extends StatefulWidget {
  @override
  _GridViewOutputState createState() => _GridViewOutputState();
}

class _GridViewOutputState extends State<GridViewOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          GridViewDescription(),
          GridViewWidget(),
          GridViewCode(),
        ],
      ),
    );
  }
}
