import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class FlatButtonDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''FlatButton(
  color: Colors.blue,
  textColor: Colors.white,
  disabledColor: Colors.grey,
  disabledTextColor: Colors.black,
  padding: EdgeInsets.all(8.0),
  splashColor: Colors.blueAccent,
  onPressed: () {
    /*...*/
  },
  child: Text(
    "Flat Button",
    style: TextStyle(fontSize: 20.0),
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
                    child: Text("Flat Button",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("         A flat button is a text label displayed on a (zero elevation) Material"
                          "widget that reacts to touches by filling with color.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           Use flat buttons on toolbars, in dialogs, or inline with other content but offset"
                          " from that content with padding so that the button's presence is obvious. Flat buttons "
                          "intentionally do not have visible borders and must therefore rely on their position relative to "
                          "other content for context. In dialogs and cards, they should be grouped together in one of "
                          "the bottom corners. Avoid using flat buttons where they would blend in with other content, "
                          "for example in the middle of lists.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("          Material design flat buttons have an all-caps label, some internal padding, "
                          "and some defined dimensions. To have a part of your application be interactive, with ink "
                          "splashes, without also committing to these stylistic choices, consider using InkWell "
                          "instead.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("           If the onPressed and onLongPress callbacks are null, then this button will "
                          "be disabled, will not react to touch, and will be colored as specified by the disabledColor property"
                          " instead of the color property. If you are trying to change the button's color and it is not "
                          "having any effect, check that you are passing a non-null onPressed "
                          "handler.",style: TextStyle(fontSize: 15),),
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
                          height: 130,
                          width: 50,
                          padding: EdgeInsets.all(20),
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: AssetImage("assets/flatbutton.png"),
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
                      Text("RaisedButton",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("A filled button whose material elevates when pressed.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("DropdownButton",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which offers the user a choice of a number of options.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("SimpleDialogOption",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which is used in SimpleDialogs.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("IconButton",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("To create buttons that just contain icons.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("InkWell",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which implements the ink splash part of a flat button.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("RawMaterialButton",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("The widget this widget is based on.",style: TextStyle(fontSize: 15),),
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
