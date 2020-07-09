import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/FadeInImage/code.dart';
import 'package:flutter_gallery_ultimate/FadeInImage/description.dart';
import 'package:flutter_gallery_ultimate/FadeInImage/fadeinimage.dart';


class FadeInImageOutput extends StatefulWidget {
  @override
  _FadeInImageOutputState createState() => _FadeInImageOutputState();
}

class _FadeInImageOutputState extends State<FadeInImageOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          FadeInImageDescription(),
          FadeInImageWidget(),
          FadeInImageCode(),
        ],
      ),
    );
  }
}
