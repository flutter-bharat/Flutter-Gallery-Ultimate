import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';



class AlignCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    var code = '''
import 'package:flutter/material.dart';

class CustomAlign extends StatefulWidget {
  @override
  _CustomAlignState createState() => _CustomAlignState();
}

class _CustomAlignState extends State<CustomAlign> {
  String groupValue;
  Alignment alignVal= Alignment.center;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Alignments'),
      ),
      body: Column(
        children: [
          Container(
            child: Align(
                alignment: alignVal,
                child: Text('Dummy Text')),
            color: Colors.red,
            height: 100,
            width: double.infinity,
          ),
          Row(
            children: [
              Radio(
                focusColor: Colors.red,
                groupValue: groupValue,
                onChanged: (val) {
                  setState(() {
                    alignVal = val;
                  });
                },
                value: Alignment.centerLeft,
              ),
              Text('Center Left'),
            ],
          ), // center left
          Row(
            children: [
              Radio(
                focusColor: Colors.red,
                groupValue: groupValue,
                onChanged: (val) {
                  setState(() {
                    alignVal = val;
                  });
                },
                value: Alignment.centerRight,
              ),
              Text('Center Right'),
            ],
          ), // center right
          Row(
            children: [
              Radio(
                focusColor: Colors.red,
                groupValue: groupValue,
                onChanged: (val) {
                  setState(() {
                    alignVal = val;
                  });
                },
                value:Alignment.bottomLeft,
              ),
              Text('Bottom Left'),
            ],
          ), // bottom left
          Row(
            children: [
              Radio(
                focusColor: Colors.red,
                groupValue: groupValue,
                onChanged: (val) {
                  setState(() {
                    alignVal = val;
                  });
                },
                value: Alignment.topLeft,
              ),
              Text('Top Left'),
            ],
          ), // top left
          Row(
            children: [
              Radio(
                focusColor: Colors.red,
                groupValue: groupValue,
                onChanged: (val) {
                  setState(() {
                    alignVal = val;
                  });
                },
                value: Alignment.center,
              ),
              Text('Center'),
            ],
          ), // center
          Row(
            children: [
              Radio(
                focusColor: Colors.red,
                groupValue: groupValue,
                onChanged: (val) {
                  setState(() {
                    alignVal = val;
                  });
                },
                value: Alignment.topRight,
              ),
              Text('Top Right'),
            ],
          ),  // TOP RIGHT
          Row(
            children: [
              Radio(
                focusColor: Colors.red,
                groupValue: groupValue,
                onChanged: (val) {
                  setState(() {
                    alignVal = val;
                  });
                },
                value: Alignment.bottomCenter,
              ),
              Text('Bottom Center'),
            ],
          ),    // bottom center
          Row(
            children: [
              Radio(
                focusColor: Colors.red,
                groupValue: groupValue,
                onChanged: (val) {
                  setState(() {
                    alignVal = val;
                  });
                },
                value:Alignment.topCenter,
              ),
              Text('Top Center'),
            ],
          ), // top center
          Row(
            children: [
              Radio(
                focusColor: Colors.red,
                groupValue: groupValue,
                onChanged: (val) {
                  setState(() {
                    alignVal = val;
                  });
                },
                value: Alignment.bottomRight,
              ),
              Text('Bottom Right'),
            ],
          ),
        ],
      ),
    );
  }
}

    ''';


    return Scaffold(
      appBar: AppBar(
        title: Text("Code"),
        centerTitle: true,
        leading: Container(),
      ),
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
