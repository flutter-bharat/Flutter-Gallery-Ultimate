import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Spacer/CustomSpacer.dart';
import 'package:flutter_gallery_ultimate/Spacer/code.dart';
import 'package:flutter_gallery_ultimate/Spacer/description.dart';

class SpacerOutput extends StatefulWidget {
  @override
  _SpacerOutputState createState() => _SpacerOutputState();
}

class _SpacerOutputState extends State<SpacerOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          SpacerDescription(),
          CustomSpacer(),
          SpacerCode(),
        ],
      ),
    );
  }
}
