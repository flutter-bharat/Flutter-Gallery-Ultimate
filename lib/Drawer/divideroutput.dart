import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Drawer/CustomDrawer.dart';
import 'package:flutter_gallery_ultimate/Drawer/drawercode.dart';
import 'package:flutter_gallery_ultimate/Drawer/description.dart';


class DrawerOutput extends StatefulWidget {
  @override
  _DrawerOutputState createState() => _DrawerOutputState();
}

class _DrawerOutputState extends State<DrawerOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          Description(),
          CustomerDrawer(),
          Code(),
        ],
      ),
    );
  }
}
