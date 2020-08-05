import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class ColumnDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''Column(
  children: <Widget>[
    Text('Deliver features faster'),
    Text('Craft beautiful UIs'),
    Expanded(
      child: FittedBox(
        fit: BoxFit.contain, // otherwise the logo will be tiny
        child: const FlutterLogo(),
      ),
    ),
  ],
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
                    child: Text("Column",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [

                      Text("           A widget that displays its children in a vertical array. The Column widget does not scroll (and in general"
                          " it is considered an error to have more children in a Column than will fit in the available room)."
                          " If you have a line of widgets and want them to be able to scroll if there is insufficient room, consider"
                          " using a ListView.",style: TextStyle(fontSize: 15),),
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
                          height: 180,
                          width: 50,
                          padding: EdgeInsets.all(20),
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: AssetImage("assets/column.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
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
                      Text("Row",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("For a horizontal equivalent.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("Flex",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("If you don't know in advance if you want a horizontal or vertical arrangement.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("Expanded",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("To indicate children that should take all the remaining room.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("Flexibal",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("To indicate children that should share the remaining room but that "
                          "may size smaller (leaving some remaining room unused).",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("Spacer",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("A widget that takes up space proportional to it's flex value.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("SingleChildScrollView",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Whose documentation discusses some ways to use a Column inside a scrolling container.",style: TextStyle(fontSize: 15),),
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
