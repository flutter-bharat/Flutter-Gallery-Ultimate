import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/TabBar/CustomTabbar.dart';
import 'package:flutter_gallery_ultimate/TabBar/code.dart';
import 'package:flutter_gallery_ultimate/TabBar/description.dart';


class TabBarOutput extends StatefulWidget {
  @override
  _TabBarOutputState createState() => _TabBarOutputState();
}

class _TabBarOutputState extends State<TabBarOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          TabBarDescription(),
          CustomTabbar(),
          TabBarCode(),
        ],
      ),
    );
  }
}
