import 'package:flutter/material.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class ListModalCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class ListModal extends StatefulWidget {
  @override
  _ListModalState createState() => _ListModalState();
}

class _ListModalState extends State<ListModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.black,
      width: MediaQuery.of(context).size.width*1,
      height: MediaQuery.of(context).size.height*0.3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height*0.2,
            decoration: BoxDecoration(color: Colors.red,
            borderRadius: BorderRadius.circular(10)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, top: 10),
            child: OverflowBox(
              alignment: Alignment.topLeft,
              child: CircleAvatar(
                radius: 40,
                foregroundColor: Colors.blue,
              ),
            ),
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
