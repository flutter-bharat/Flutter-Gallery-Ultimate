import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class ColumnCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
 import 'package:flutter/material.dart';

class ColumnWidget extends StatefulWidget {
  @override
  _ColumnWidgetState createState() => _ColumnWidgetState();
}

class _ColumnWidgetState extends State<ColumnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Column"),
        centerTitle: true,
      ),
      body: Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is the column Widgit: Item 1",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,color: Colors.red),),
              SizedBox(height: 100.0),
              Text("This is the column Widget: Item 2",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,color: Colors.green)),
              SizedBox(height: 100.0),
              Text("This is the column Widget: Item 3",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,color: Colors.blue)),
          ],
        ),
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
