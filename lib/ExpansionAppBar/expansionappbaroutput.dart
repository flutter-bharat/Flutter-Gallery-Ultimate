import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/ExpansionAppBar/CustomExpansionAppbar.dart';
import 'package:flutter_gallery_ultimate/ExpansionAppBar/code.dart';
import 'package:flutter_gallery_ultimate/ExpansionAppBar/description.dart';

class ExpansionAppBarOutput extends StatefulWidget {
  @override
  _ExpansionAppBarOutputState createState() => _ExpansionAppBarOutputState();
}

class _ExpansionAppBarOutputState extends State<ExpansionAppBarOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          ExpansionAppBarDescription(),
          CustomMainAppbar(),
          ExpansionAppBarCode(),
        ],
      ),
    );
  }
}
