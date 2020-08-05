import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/googlecode.dart';
import 'package:flutter_gallery_ultimate/utils/DataFile.dart';

class AlertCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var code;
    var code1;
    var code2;
    Column(
      children: [
        HighlightView(code = '''            
 import 'package:flutter/material.dart';

class CustomAlert extends StatelessWidget {
  Future<bool> showAlert(BuildContext context) async {
    return showDialog(
      barrierDismissible: false,
        context: context,
        builder: (context) {
        '''),
        Container(
          child: HighlightView(code1 = ''' 
           return AlertDialog(
            title: Text(
              'This is a alert box example',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
            actions: [
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print('Got it!');
                  },
                  child: Text('Got it!')),
              FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print('Not Yet');
                  },
                  child: Text('Not yet!'))
            ],
          );
        });
  }
),
          '''),
        ),
        Container(
          child: HighlightView(code2 = '''
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Alert'),
      ),
      body: Center(
        child: FlatButton(
            onPressed: () => showAlert(context), child: Text('Show Dialog')),
      ),
    );
  }
}   
      '''),
        ),
      ],
    );

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
            theme: googlecodeTheme,

            // Specify padding
            padding: EdgeInsets.all(12),

            // Specify text style
            textStyle: TextStyle(
              fontFamily: 'My awesome monospace font',
              fontSize: 16,
            ),
          ),
          HighlightView(
            // The original code to be highlighted
            code1,

            // Specify language
            // It is recommended to give it a value for performance
            language: 'dart',

            // Specify highlight theme
            // All available themes are listed in `themes` folder
            theme: googlecodeTheme,

            // Specify padding
            padding: EdgeInsets.all(12),

            // Specify text style
            textStyle: TextStyle(
              fontFamily: 'My awesome monospace font',
              color: Colors.blue,
              fontWeight: FontWeight.w600,
              fontSize: 17,
              // backgroundColor: Colors.yellow
            ),
          ),
          HighlightView(
            // The original code to be highlighted
            code2,

            // Specify language
            // It is recommended to give it a value for performance
            language: 'dart',

            // Specify highlight theme
            // All available themes are listed in `themes` folder
            theme: googlecodeTheme,

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
