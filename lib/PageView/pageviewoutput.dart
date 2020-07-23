import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/PageView/code.dart';
import 'package:flutter_gallery_ultimate/PageView/description.dart';
import 'file:///C:/Users/Ruchin/Git/Flutter-Gallery-Ultimate/lib/PageView/pageview.dart';

class PageViewOutput extends StatefulWidget {
  @override
  _PageViewOutputState createState() => _PageViewOutputState();
}

class _PageViewOutputState extends State<PageViewOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          Description(),
          pageView(),
          Code(),
        ],
      ),
    );
  }
}
