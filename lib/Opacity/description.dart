import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class OpacityDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''
Opacity(
  opacity: _visible ? 1.0 : 0.0,
  child: const Text("Now you see me, now you don't!"),
)
      '''
        ),
      ],
    );

    return Scaffold(
      appBar: customizedAppBar("Description"),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all( 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text("Opacity",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("     A widget that makes its child partially transparent.This class paints its child into an "
                          "intermediate buffer and then blends the child back into the scene partially "
                          "transparent.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("      For values of opacity other than 0.0 and 1.0, this class is relatively expensive because it requires painting the child into an intermediate buffer. For the value 0.0, "
                          "the child is simply not painted at all. For the value 1.0, the child is painted immediately without an"
                          " intermediate buffer.",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text("Demo Code",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Container(
                  height: 170,
                  width: 370,
                  child: Card(
                    shadowColor: Colors.grey,
                    elevation: 15,
                    child: ListView(
                      children: [
                        HighlightView(
                          // The original code to be highlighted
                          code,

                          // Specify language
                          // It is recommended to give it a value for performance
                          language: 'dart',

                          // Specify highlight theme
                          // All available themes are listed in `themes` folder
                          theme: googlecodeTheme   ,

                          // Specify padding
                          padding: EdgeInsets.all(12),

                          // Specify text style
                          textStyle: TextStyle(
                            fontFamily: 'My awesome monospace font',
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Text("Related Widgets",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                SizedBox(height: 20.0),
                Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Visibility",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which can hide a child more efficiently (albeit less subtly, because it is either visible or hidden, rather than allowing fractional opacity values).",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("ShaderMask",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which can apply more elaborate effects to its child.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("Transform",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which applies an arbitrary transform to its child widget at paint time.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("AnimatedOpacity",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which uses an animation internally to efficiently animate opacity.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("ShaderMask",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which can apply more elaborate effects to its child.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("FadeTransition",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which uses a provided animation to efficiently animate opacity.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("Image",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which can directly provide a partially transparent image with much less performance hit.",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
