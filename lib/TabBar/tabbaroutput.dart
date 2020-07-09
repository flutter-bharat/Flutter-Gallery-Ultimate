import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/TabBar/CustomTabbar.dart';
import 'package:flutter_gallery_ultimate/TabBar/code.dart';
import 'package:flutter_gallery_ultimate/TabBar/description.dart';


class TabBarOutput extends StatefulWidget {
  @override
  _TabBarOutputState createState() => _TabBarOutputState();
}

class _TabBarOutputState extends State<TabBarOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
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
