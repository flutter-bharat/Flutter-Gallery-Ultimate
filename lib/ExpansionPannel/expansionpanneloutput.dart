import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/ExpansionPannel/code.dart';
import 'package:flutter_gallery_ultimate/ExpansionPannel/description.dart';
import 'package:flutter_gallery_ultimate/ExpansionPannel/expansionpannel.dart';


class ExpansionPanelOutput extends StatefulWidget {
  @override
  _ExpansionPanelOutputState createState() => _ExpansionPanelOutputState();
}

class _ExpansionPanelOutputState extends State<ExpansionPanelOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          ExpansionPanelDescription(),
          ExpansionPannelWidget(),
          ExpansionPanelCode(),
        ],
      ),
    );
  }
}
