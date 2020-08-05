import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class ClipRactCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
 import 'package:flutter/material.dart';

class CustomClipRRect extends StatefulWidget {
  @override
  _CustomClipRRectState createState() => _CustomClipRRectState();
}

class _CustomClipRRectState extends State<CustomClipRRect> {
  
  double radii=10.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom ClipRRect'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(radii),
                  child: Image.network("https://images.unsplash.com/photo-1503803548695-c2a7b4a5b875?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")),
            ),
            SizedBox(
              height: 100,
            ),
            Slider(value: radii, onChanged: (val){
              setState(() {
                radii= val;
              });
            },
              min: 10,
              max: 100,
              activeColor: Colors.blue,
              inactiveColor: Colors.grey,
            )
          ],
        ),
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
