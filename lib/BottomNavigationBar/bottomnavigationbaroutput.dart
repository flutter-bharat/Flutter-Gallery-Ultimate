import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/BottomNavigationBar/bottomnavigationbar.dart';
import 'package:flutter_gallery_ultimate/BottomNavigationBar/bottomnavigationbarcode.dart';
import 'package:flutter_gallery_ultimate/BottomNavigationBar/bottomnavigationbardescription.dart';


class BottomNavigationBarOutput extends StatefulWidget {
  @override
  _BottomNavigationBarOutputState createState() => _BottomNavigationBarOutputState();
}

class _BottomNavigationBarOutputState extends State<BottomNavigationBarOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          BottomNavigationBarDescription(),
          CustomBottomNavigationbar(),
          BottomNavigationBarCode(),
        ],
      ),
    );
  }
}
