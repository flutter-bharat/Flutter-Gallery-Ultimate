import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Stack/CustomStack.dart';
import 'package:flutter_gallery_ultimate/Stack/code.dart';
import 'package:flutter_gallery_ultimate/Stack/description.dart';


class StackOutput extends StatefulWidget {
  @override
  _StackOutputState createState() => _StackOutputState();
}

class _StackOutputState extends State<StackOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          StackDescription(),
          CustomStack(),
          StackCode(),
        ],
      ),
    );
  }
}
