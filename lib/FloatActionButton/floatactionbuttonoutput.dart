import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/FloatActionButton/CustomFloatActionButton.dart';
import 'package:flutter_gallery_ultimate/FloatActionButton/code.dart';
import 'package:flutter_gallery_ultimate/FloatActionButton/description.dart';

class FloatActionButtonOutput extends StatefulWidget {
  @override
  _FloatActionButtonOutputState createState() => _FloatActionButtonOutputState();
}

class _FloatActionButtonOutputState extends State<FloatActionButtonOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          FloatActionButtonDescription(),
          CustomFAB(),
          FloatActionButtonCode(),
        ],
      ),
    );
  }
}
