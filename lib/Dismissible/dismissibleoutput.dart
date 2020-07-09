import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Dismissible/CustomDismissible.dart';
import 'package:flutter_gallery_ultimate/Dismissible/code.dart';
import 'package:flutter_gallery_ultimate/Dismissible/description.dart';


class DismissibleOutput extends StatefulWidget {
  @override
  _DismissibleOutputState createState() => _DismissibleOutputState();
}

class _DismissibleOutputState extends State<DismissibleOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          DismissibleDescription(),
          CustomDismissible(),
          DismissibleCode(),
        ],
      ),
    );
  }
}
