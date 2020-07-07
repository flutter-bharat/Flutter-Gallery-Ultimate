import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/SelectedText/code.dart';
import 'package:flutter_gallery_ultimate/SelectedText/description.dart';
import 'package:flutter_gallery_ultimate/SelectedText/slelectedtext.dart';


class SelectedTextOutput extends StatefulWidget {
  @override
  _SelectedTextOutputState createState() => _SelectedTextOutputState();
}

class _SelectedTextOutputState extends State<SelectedTextOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          SelectedTextDescription(),
          SelectedTextWidget(),
          SelectedTextCode(),
        ],
      ),
    );
  }
}
