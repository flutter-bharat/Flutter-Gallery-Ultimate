import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Flow/flow.dart';
import 'package:flutter_gallery_ultimate/SafeArea/CustomSafeArea.dart';
import 'package:flutter_gallery_ultimate/SafeArea/code.dart';
import 'package:flutter_gallery_ultimate/SafeArea/description.dart';


class SafeAreaOutput extends StatefulWidget {
  @override
  _SafeAreaOutputState createState() => _SafeAreaOutputState();
}

class _SafeAreaOutputState extends State<SafeAreaOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          SafeAreaDescription(),
          CustomSafeArea(),
          SafeAreaCode(),
        ],
      ),
    );
  }
}
