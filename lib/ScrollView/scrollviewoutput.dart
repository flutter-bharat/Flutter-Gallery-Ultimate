import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/ScrollView/CustomScrollViewFile.dart';
import 'package:flutter_gallery_ultimate/ScrollView/code.dart';
import 'package:flutter_gallery_ultimate/ScrollView/description.dart';


class ScrollViewOutput extends StatefulWidget {
  @override
  _ScrollViewOutputState createState() => _ScrollViewOutputState();
}

class _ScrollViewOutputState extends State<ScrollViewOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          ScrollViewDescription(),
          CustomScrollViewFile(),
          ScrollViewCode(),
        ],
      ),
    );
  }
}
