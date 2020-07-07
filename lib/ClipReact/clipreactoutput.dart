import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/ClipReact/CustomClipRRect.dart';
import 'package:flutter_gallery_ultimate/ClipReact/clipreactcode.dart';
import 'package:flutter_gallery_ultimate/ClipReact/clipreactdescription.dart';

class ClipReactOutput extends StatefulWidget {
  @override
  _ClipReactOutputState createState() => _ClipReactOutputState();
}

class _ClipReactOutputState extends State<ClipReactOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          ClipRactDescription(),
          CustomClipRRect(),
          ClipRactCode(),
        ],
      ),
    );
  }
}
