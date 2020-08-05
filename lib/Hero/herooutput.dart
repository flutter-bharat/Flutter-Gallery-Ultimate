import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/Hero/CustomHero.dart';
import 'package:flutter_gallery_ultimate/Hero/code.dart';
import 'package:flutter_gallery_ultimate/Hero/description.dart';


class HeroOutput extends StatefulWidget {
  @override
  _HeroOutputState createState() => _HeroOutputState();
}

class _HeroOutputState extends State<HeroOutput> {
  PageController _controller  = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: [
          HeroDescription(),
          CustomHero(),
          HeroCode(),
        ],
      ),
    );
  }
}
