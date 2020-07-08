import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/AppBar/appbarcode.dart';
import 'package:flutter_gallery_ultimate/AppBar/appbardescription.dart';
import 'package:flutter_gallery_ultimate/AppBar/customAppBar.dart';

class AppBarOutput extends StatefulWidget {
  @override
  _AppBarOutputState createState() => _AppBarOutputState();
}

class _AppBarOutputState extends State<AppBarOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          AppBarDescription(),
          CustomAppbar(),
          AppBarCode(),
        ],
      ),
    );
  }
}
