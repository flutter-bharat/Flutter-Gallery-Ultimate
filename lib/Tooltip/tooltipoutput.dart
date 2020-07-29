import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Tooltip/code.dart';
import 'package:flutter_gallery_ultimate/Tooltip/description.dart';
import 'package:flutter_gallery_ultimate/Tooltip/tooltip.dart';


class ToolTipOutput extends StatefulWidget {
  @override
  _ToolTipOutputState createState() => _ToolTipOutputState();
}

class _ToolTipOutputState extends State<ToolTipOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          ToolTipDescription(),
          ToolTipWidget(),
          ToolTipCode(),
        ],
      ),
    );
  }
}
