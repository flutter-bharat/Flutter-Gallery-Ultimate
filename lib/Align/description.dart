import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class AlignDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''
Center(
  child: Container(
    height: 120.0,
    width: 120.0,
    color: Colors.blue[50],
    child: Align(
      alignment: FractionalOffset(0.2, 0.6),
      child: FlutterLogo(
        size: 60,
      ),
    ),
  ),
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
                    child: Text("Align ",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgA widget that aligns its child within itself and optionally sizes itself based on the child's size.eInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("          A widget that aligns its child within itself and optionally sizes itself based on the child's size."
                          "For example, to align a box at the bottom right, you would pass this box a tight constraint that is bigger "
                          "than the child's natural size, with an alignment of Alignment.bottomRight.",style: TextStyle(fontSize: 15,),),

                      SizedBox(height: 10.0,),
                      Text("           This widget will be as big as possible if its dimensions are constrained and "
                          "widthFactor and heightFactor are null. If a dimension is unconstrained and the corresponding"
                          " size factor is null then the widget will match its child's size in that dimension. If a size "
                          "factor is non-null then the corresponding dimension of this widget will be the product of "
                          "the child's dimension and the size factor. For example if widthFactor is 2.0 then the width "
                          "of this widget will always be twice its child's width.",style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text("Demo Code",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Container(
                  height: 400,
                  width: 370,
                  child: Card(
                    shadowColor: Colors.grey,
                    elevation: 15,
                    child: ListView(
                      children: [
                        Container(
                          height: 200,
                          width: 50,
                          padding: EdgeInsets.all(20),
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                                image: AssetImage("assets/align.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
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
                      Text("AnimatedAlign",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which animates changes in alignment smoothly over a given duration.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("CustomSingleChildLayout",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which uses a delegate to control the layout of a single child.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("Center",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which is the same as Align but with the alignment always set to Alignment.center.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("FractionallySizedBox",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which sizes its child based on a fraction of its own size and positions the child according to an Alignment value.",style: TextStyle(fontSize: 15),),
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
