import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class DividerCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class DividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Divider"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Item: 1"),
          ),
          Divider(),
          ListTile(
            title: Text("Item: 2"),
          ),
          Divider(),
          ListTile(
            title: Text("Item: 3"),
          ),
          Divider(),
          ListTile(
            title: Text("Divider height range"),
          ),
          Divider(height: 60),
          ListTile(
            title: Text("Divider left space indent"),
          ),
          Divider(indent: 100,color: Colors.grey),
          ListTile(
            title: Text("Divider Color"),
          ),
          Divider(color: Colors.red),
        ],
      )
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
