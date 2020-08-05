import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class ClipRactDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''ClipRect(
  child: Align(
    alignment: Alignment.topCenter,
    heightFactor: 0.5,
    child: Image.network(userAvatarUrl),
  ),
)
}
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
                    child: Text("CLipReact",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("         ClipRect prevents its child from painting outside its bounds, "
                          "but the size and location of the clip rect can be customized using a custom"
                          " clipper.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text("Demo Code",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Container(
                  height: 200,
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
                      Text("CustomClipper",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For information about creating custom clips.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("ClipRReact",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For a clip with rounded corners.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("ClipOval",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For an elliptical clip.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("ClipPath",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For an arbitrarily shaped clip.",style: TextStyle(fontSize: 15),),
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
