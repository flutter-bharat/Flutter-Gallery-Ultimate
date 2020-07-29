import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class Code extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
  import 'package:flutter/material.dart';

  class pageView extends StatefulWidget {
  @override
  _pageViewState createState() => _pageViewState();
   }

   class _pageViewState extends State<pageView> {

   bool isVertical = false;
   static const TextStyle textStyle = TextStyle(
   fontSize: 20,fontWeight: FontWeight.bold);
   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PageView"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("PageView",style: textStyle),
          SizedBox(height: 30),
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.yellow,
            child: PageView(
              controller: PageController(),
              scrollDirection: isVertical ? 
              Axis.vertical : Axis.horizontal,
              children: [
                Center (child: Text("Page 1",style: textStyle),),
                Center(child: Text("Page 2",style: textStyle)),
                Center(child: Text("Page 3",style: textStyle)),
                Center(child: Text("Page 4",style: textStyle)),
              ],
            ),
          ),
          SizedBox(height: 30),
          RaisedButton(
            onPressed: () => setState(() => 
            isVertical = !isVertical),
            child: Text("Change Direction",style: textStyle),
          ),
        ],
      ),
    );
  }
}
    ''';


    return Scaffold(
     appBar: customizedAppBar("Code"),
      body: ListView(
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
    );
  }
}
