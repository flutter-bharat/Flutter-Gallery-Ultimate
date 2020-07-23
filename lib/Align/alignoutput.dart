import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Align/CustomAlign.dart';
import 'package:flutter_gallery_ultimate/Align/code.dart';
import 'package:flutter_gallery_ultimate/Align/description.dart';


class AlignOutput extends StatefulWidget {
  @override
  _AlignOutputState createState() => _AlignOutputState();
}

class _AlignOutputState extends State<AlignOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          AlignDescription(),
          CustomAlign(),
          AlignCode(),
        ],
      ),
    );
  }
}
