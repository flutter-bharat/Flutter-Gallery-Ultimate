import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/HeroAnimationScreen/CustomHeroAnimationScreen.dart';
import 'package:flutter_gallery_ultimate/HeroAnimationScreen/code.dart';
import 'package:flutter_gallery_ultimate/HeroAnimationScreen/description.dart';


class HeroAnimationOutput extends StatefulWidget {
  @override
  _HeroAnimationOutputState createState() => _HeroAnimationOutputState();
}

class _HeroAnimationOutputState extends State<HeroAnimationOutput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.horizontal,
        children: [
          HeroAnimationDescription(),
          CustomHeroAnimationScreen(),
          HeroAnimationCode(),
        ],
      ),
    );
  }
}
