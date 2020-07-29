import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';

class RichTextDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    Column(
      children: [
        HighlightView(
            code = '''RichText(
  text: TextSpan(
    text: 'Hello ',
    style: DefaultTextStyle.of(context).style,
    children: <TextSpan>[
      TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: ' world!'),
    ],
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
                    child: Text("RichText",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold))),
                SizedBox(height: 30.0),
                Container(
                  //    padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Text("           The RichText widget displays text that uses multiple different styles. The text "
                          "to display is described using a tree of TextSpan objects, each of which has an associated "
                          "style that is used for that subtree. The text might break across multiple lines or might all "
                          "be displayed on the same line depending on the layout constraints.",style: TextStyle(fontSize: 15,),),
                      SizedBox(height: 10.0,),
                      Text("           Text displayed in a RichText widget must be explicitly styled. When picking which style to use, "
                          "consider using DefaultTextStyle.of the current BuildContext to provide defaults. For more details on how to "
                          "style text in a RichText widget, see the documentation for TextStyle.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 10.0,),
                      Text("           Consider using the Text widget to integrate with the DefaultTextStyle automatically. When all the text uses the same style, the default constructor is less verbose. The Text.rich "
                          "constructor allows you to style multiple spans with the default text style while still allowing specified "
                          "styles per span.",style: TextStyle(fontSize: 15),),

                    ],
                  ),
                ),
                SizedBox(height: 30.0),
                Text("Demo Code",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                SizedBox(height: 20.0),
                Container(
                  height: 300,
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
                      Text("TextStyle",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which discusses how to style text.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("TextSpan",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which is used to describe the text in a paragraph.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("Text",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("Which automatically applies the ambient styles described by a DefaultTextStyle to a single string.",style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20.0),
                      Text("Text.rich",style: TextStyle(color: Colors.blue,fontSize: 17),),
                      SizedBox(height: 5.0),
                      Text("A const text widget that provides similar functionality as RichText. Text.rich will "
                          "inherit TextStyle from DefaultTextStyle.Inheritance",style: TextStyle(fontSize: 15),),
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
