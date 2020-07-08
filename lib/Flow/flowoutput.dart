import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Flow/code.dart';
import 'package:flutter_gallery_ultimate/Flow/description.dart';
import 'package:flutter_gallery_ultimate/Flow/flow.dart';


class FlowOutput extends StatefulWidget {
  @override
  _FlowOutputState createState() => _FlowOutputState();
}

class _FlowOutputState extends State<FlowOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          FlowDescription(),
          FlowWidget(),
          FlowCode(),
        ],
      ),
    );
  }
}
