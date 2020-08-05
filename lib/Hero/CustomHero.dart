import 'package:flutter/material.dart';
//import 'HeroAnimationScreen/CustomHeroAnimationScreen.dart';

class CustomHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Hero Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
//            FlatButton(
//              onPressed: () {
//                Navigator.push(context, MaterialPageRoute(builder: (context)=> CustomHeroAnimationScreen()));
//              },
//              child: Text('Show animation'),
//              color: Colors.blue,
//            ),
            Hero(
              tag: 'hero',
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
