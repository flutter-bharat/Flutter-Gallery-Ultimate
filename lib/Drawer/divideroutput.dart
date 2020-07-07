import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Divider/divider.dart';
import 'package:flutter_gallery_ultimate/PageView/code.dart';
import 'package:flutter_gallery_ultimate/PageView/description.dart';


class DrawerOutput extends StatefulWidget {
  @override
  _DrawerOutputState createState() => _DrawerOutputState();
}

class _DrawerOutputState extends State<DrawerOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          Description(),
          DividerWidget(),
          Code(),
        ],
      ),
    );
  }
}
