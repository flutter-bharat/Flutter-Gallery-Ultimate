import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Flow/flow.dart';
import 'package:flutter_gallery_ultimate/Spacer/CustomSpacer.dart';
import 'package:flutter_gallery_ultimate/Spacer/code.dart';
import 'package:flutter_gallery_ultimate/Spacer/description.dart';

class SpacerOutput extends StatefulWidget {
  @override
  _SpacerOutputState createState() => _SpacerOutputState();
}

class _SpacerOutputState extends State<SpacerOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
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
