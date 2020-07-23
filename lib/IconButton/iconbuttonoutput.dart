import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/IconButton/CustomIconButton.dart';
import 'package:flutter_gallery_ultimate/IconButton/code.dart';
import 'package:flutter_gallery_ultimate/IconButton/description.dart';


class IconButtonOutput extends StatefulWidget {
  @override
  _IconButtonOutputState createState() => _IconButtonOutputState();
}

class _IconButtonOutputState extends State<IconButtonOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          IconButtonDescription(),
          CustomIconButton(),
          IconButtonCode(),
        ],
      ),
    );
  }
}
