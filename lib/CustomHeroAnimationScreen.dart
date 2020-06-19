import 'package:flutter/material.dart';
class CustomHeroAnimationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Hero Widget'),
      ),
      body: Center(
        child: Hero(
          tag: 'hero',
          child: Container(
            color: Colors.blueGrey,
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
