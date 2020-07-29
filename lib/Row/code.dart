import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class RowCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  @override
  _RowWidgetState createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Row"),
        centerTitle: true,
      ),
      body: Center(
          child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: 100.0,
                color: Colors.green[50],
                child: Center(child: Text("Item: 1",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,color: Colors.green))
                ),
          ),
            SizedBox(width: 30.0),
            Container(
              height: MediaQuery.of(context).size.height,
              width: 100.0,
              color: Colors.yellow[50],
              child: Center(child: Text("Item: 2",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,color: Colors.orange))),
            ),
            SizedBox(width: 30.0),
            Container(
              height: MediaQuery.of(context).size.height,
              width: 100.0,
              color: Colors.red[50],
              child: Center(child: Text("Item: 3",style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 20.0,color: Colors.red))),
            ),
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
