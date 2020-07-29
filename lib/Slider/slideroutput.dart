import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Slider/code.dart';
import 'package:flutter_gallery_ultimate/Slider/description.dart';
import 'package:flutter_gallery_ultimate/Slider/slider.dart';


class SliderOutput extends StatefulWidget {
  @override
  _SliderOutputState createState() => _SliderOutputState();
}

class _SliderOutputState extends State<SliderOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          SliderDescription(),
          SliderWidget(),
          SliderCode(),
        ],
      ),
    );
  }
}
