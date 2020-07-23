import 'package:flutter/material.dart';

import 'package:flutter_gallery_ultimate/Opacity/CustomOpacity.dart';
import 'package:flutter_gallery_ultimate/Opacity/code.dart';
import 'package:flutter_gallery_ultimate/Opacity/description.dart';


class OpacityOutput extends StatefulWidget {
  @override
  _OpacityOutputState createState() => _OpacityOutputState();
}

class _OpacityOutputState extends State<OpacityOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          OpacityDescription(),
          CustomOpacity(),
          OpacityCode(),
        ],
      ),
    );
  }
}
